# Conventional Commits Guide for GOLDENGATE_MOBILE_APP

To enable Melos automated versioning and changelog generation, follow these commit message rules:

## Commit Message Format

Start every commit message with a Conventional Commit type, followed by your ticketing prefix:

- `feat: [ft][MB-001] Add event API integration`
- `fix: [fx][MB-006] Fix payment processing bug`
- `docs: [dc][MB-008] Update API documentation`
- `chore: [ch][MB-010] Update Flutter dependencies`
- `refactor: [rf][MB-003] Refactor user model structure`
- `test: [ts][MB-009] Add unit tests for event service`
- `perf: [MB-700] Improve performance of event service`
- `BREAKING CHANGE: ...` (or `feat!: ...`) for major version bumps

## Examples

```
feat: [ft][MB-001] Add event API integration
fix: [fx][MB-006] Fix payment processing bug
chore: [ch][MB-010] Update Flutter dependencies
```

## Best Practices

- Always use a Conventional Commit type at the start.
- Keep your ticketing and project prefix after the type for traceability.
- Use imperative mood and capitalize the first letter.
- No period at the end.

## Manual Versioning for Legacy Commits

For older commits that do not follow this format, use manual versioning for the first Melos release:

```
melos version --manual-version=feature_commons:1.0.0
```

After that, use the new commit format for automatic versioning.

---

**This guide ensures Melos can automate versioning and changelog generation while preserving your ticketing system.**
