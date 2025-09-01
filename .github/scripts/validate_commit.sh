#!/bin/bash

# Validate commit messages against the convention: [type][GG-ticket] Description
# Types: ft, tt, rf, cr, wr, fx, hf, dc, ts, ch
# Example: [ft][GG-001] Add event API integration

# Check if origin/main exists
if git show-ref --verify --quiet refs/remotes/origin/main; then
  COMMITS=$(git log --pretty=format:%s origin/main..HEAD)
else
  COMMITS=$(git log --pretty=format:%s)
fi

VALID=1

for COMMIT in $COMMITS; do
  # Only check the first line (subject) of each commit message
  SUBJECT=$(echo "$COMMIT" | head -n1)
  # Skip merge commits and SHA-only messages
  if [[ $SUBJECT == "Merge" ]] || [[ $SUBJECT =~ ^[0-9a-f]{40}$ ]] || [[ $SUBJECT == "into" ]]; then
    continue
  fi
  if [[ ! $SUBJECT =~ ^\[(ft|tt|rf|cr|wr|fx|hf|dc|ts|ch)\]\[GG-[0-9]{3}\]\ .+ ]]; then
    echo "Invalid commit message: $SUBJECT"
    VALID=0
  fi
  if (( ${#SUBJECT} > 72 )); then
    echo "Commit message too long: $SUBJECT"
    VALID=0
  fi
  # Add more checks as needed
done

if [[ $VALID -eq 0 ]]; then
  echo "One or more commit messages do not follow the convention."
  exit 1
fi
