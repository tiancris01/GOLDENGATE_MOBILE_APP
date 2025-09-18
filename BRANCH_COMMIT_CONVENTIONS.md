# Branching Convention (for branch names only)

This document now applies **only to branch naming** for the GOLDENGATE_MOBILE_APP project. For commit message rules, see `CONVENTIONAL_COMMITS_GUIDE.md`.

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

---

**For commit message conventions, refer to `CONVENTIONAL_COMMITS_GUIDE.md`.**
