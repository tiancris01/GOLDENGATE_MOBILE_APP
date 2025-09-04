# GitHub Workflow & Branch Rules

## Branch Protection

- All changes to `main` must go through Pull Requests (no direct pushes).
- Require at least one code review approval before merging.
- Require status checks (CI) to pass before merging.
- Only allow squash or rebase merges (no merge commits).
- Automatically delete branches after merging.

## Merge Methods

- **Squash and merge**: Combines all commits from a branch into a single commit on `main`.
- **Rebase and merge**: Reapplies commits from a branch onto the tip of `main` for a linear history.
- **Merge commits**: Disabled to avoid unnecessary history clutter.

## Pull Request Requirements

- Pull requests must be up-to-date with `main` before merging.
- All CI checks must pass.
- At least one reviewer must approve the changes.

## Branch Cleanup

- Feature branches should be deleted after merging (automated by GitHub).

## Additional Recommendations

- Use descriptive branch names (e.g., `feature/login`, `bugfix/crash-on-startup`).
- Write clear, concise commit messages.
- Keep pull requests focused and small for easier review.

---

_These rules help maintain a clean, safe, and collaborative workflow for the MATCH_BETTER_MOBILE_APP project._
