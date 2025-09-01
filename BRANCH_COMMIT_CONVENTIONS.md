# Branching and Commit Conventions

This document outlines the branching naming conventions and commit message rules for the MATCH_BETTER_MOBILE_APP project.

## Branch Naming Convention

### Format: `type/ticket_description`

### Branch Types

- **ft** - Feature (new functionality)
- **tt** - Task (general tasks, improvements)
- **rf** - Refactor (code restructuring)
- **cr** - Code Review (review-related changes)
- **wr** - Work (general work, miscellaneous)
- **fx** - Fix (bug fixes)
- **hf** - Hotfix (critical production fixes)

### Examples

```
ft/001_event_api_integration
tt/002_setup_authentication
rf/003_user_model_structure
cr/004_ui_component_review
wr/005_project_documentation
fx/006_payment_bug
hf/007_critical_app_crash
```

### Description Guidelines

- Use lowercase letters
- Separate words with underscores
- Be descriptive but concise
- Include the main feature/change being worked on

## Commit Message Convention

### Format: `[type][GG-ticket] Description`

### Commit Types

- **ft** - Feature
- **tt** - Task
- **rf** - Refactor
- **cr** - Code Review
- **wr** - Work
- **fx** - Fix
- **hf** - Hotfix
- **dc** - Documentation
- **ts** - Test
- **ch** - Chore

### Examples

```
[ft][GG-001] Add event API integration
[tt][GG-002] Setup authentication providers
[rf][GG-003] Refactor user model structure
[fx][GG-006] Fix payment processing bug
[hf][GG-007] Fix critical app crash on startup
[dc][GG-008] Update API documentation
[ts][GG-009] Add unit tests for event service
[ch][GG-010] Update Flutter dependencies
```

### Description Guidelines

- Use imperative mood ("Add" not "Added" or "Adds")
- Capitalize first letter
- No period at the end
- Maximum 72 characters
- Be clear and descriptive

## Workflow Examples

### Creating a New Feature Branch

```bash
# Create and switch to feature branch
git checkout -b ft/001_event_api_integration

# Work on your changes...

# Commit with proper format
git commit -m "[ft][GG-001] Add event API service integration"

# Push branch
git push -u origin ft/001_event_api_integration
```

### Bug Fix Workflow

```bash
# Create bug fix branch
git checkout -b fx/006_payment_bug

# Fix the bug...

# Commit the fix
git commit -m "[fx][GG-006] Fix payment processing bug"

# Push and create PR
git push -u origin fx/006_payment_bug
```

### Hotfix Workflow

```bash
# Create hotfix from main
git checkout main
git checkout -b hf/007_app_crash_fix

# Apply critical fix...

# Commit hotfix
git commit -m "[hf][GG-007] Fix app crash when payment fails"

# Push and merge to main immediately
git push -u origin hf/007_app_crash_fix
```

## Ticket Numbering System

### Format: XXX (for branches) / GG-XXX (for commits)

- **Branch naming**: Use just the number (001, 002, 003...)
- **Commit messages**: Use GG-XXX prefix ([GG-001], [GG-002], [GG-003]...)
- **GG** - Project prefix (GoldenGate) - only in commits
- **XXX** - Sequential number

### Categories by Number Range

- **001 to 099** - Core event functionality
- **100 to 199** - UI/UX features
- **200 to 299** - Authentication and user management
- **300 to 399** - Navigation and routing
- **400 to 499** - Settings and preferences
- **500 to 599** - Payment functionality
- **600 to 699** - Testing and quality assurance
- **700 to 799** - Performance optimizations
- **800 to 899** - Bug fixes
- **900 to 999** - Documentation and maintenance

## Git Best Practices

### Before Committing

1. Run `flutter analyze`
2. Run `flutter test`
3. Format code with `dart format .`
4. Review your changes

### Branch Management

- Always branch from `main` for new work
- Keep branches focused on single tickets
- Delete branches after merging
- Use descriptive branch names

### Pull Request Guidelines

1. Title should match the ticket: "[type][GG-XXX] Description"
2. Include ticket number in PR description
3. Add screenshots for UI changes
4. Request appropriate reviewers
5. Ensure CI checks pass

## Common Scenarios

### Multiple Commits for Same Ticket

```
[ft][GG-001] Add event API service structure
[ft][GG-001] Implement event data fetching
[ft][GG-001] Add error handling for API calls
[ft][GG-001] Update documentation for event service
```

### Related Work Across Different Types

```
# Main feature
[ft][GG-001] Add event API integration

# Related task
[tt][GG-002] Setup environment variables for API keys

# Related fix
[fx][GG-003] Fix API timeout configuration
```

### Documentation and Testing

```
[dc][GG-004] Add API integration documentation
[ts][GG-005] Add unit tests for event service
[ch][GG-006] Update dependencies for security patches
```

---

Following these conventions ensures consistent, trackable, and professional Git history for the GOLDENGATE_MOBILE_APP project.
