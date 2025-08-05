#!/bin/bash

set -e

BRANCH="auto-commit"

# Check if on main branch
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
if [ "$CURRENT_BRANCH" != "main" ]; then
  echo "Please run this script from the main branch."
  exit 1
fi

# Stash uncommitted changes (optional, remove if you don't want this)
# git stash -u

# Create or reset the branch
git checkout -B "$BRANCH"

# Add all changes (including submodules)
git add -A

# Commit if there are changes
if ! git diff --cached --quiet; then
  git commit -m "Automated dotfiles update"
else
  echo "No changes to commit."
  exit 0
fi

# Push branch to origin
git push -u origin "$BRANCH" --force

# Try to create a PR, capture output and errors
PR_OUTPUT=$(gh pr create --base main --head "$BRANCH" --title "Update dotfiles" --body "Automated PR for dotfiles update" --web=false 2>&1) || true

# Check if PR already exists
if echo "$PR_OUTPUT" | grep -q "already exists"; then
  # Extract PR URL from output
  PR_URL=$(echo "$PR_OUTPUT" | grep -o 'https://github.com[^ ]*')
  echo "PR already exists: $PR_URL"
else
  # Extract PR URL from output (should be last line)
  PR_URL=$(echo "$PR_OUTPUT" | tail -n1)
  echo "PR created: $PR_URL"
fi

# Extract PR number from URL
PR_NUMBER=$(echo "$PR_URL" | grep -o '[0-9]\+$')

# Merge PR (squash merge, auto-delete branch)
gh pr merge "$PR_NUMBER" -s -d

echo "PR merged and branch deleted."
