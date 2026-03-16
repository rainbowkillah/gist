# RainbowSmoke Scaffold Kit

Starter repository scaffold with one-command GitHub repo initialization.

## Included
- `scripts/init-repo.sh` — initializes git, creates first commit, creates GitHub repo, adds remote, pushes
- `scripts/bootstrap.sh` — optional local bootstrap helper
- `LICENSE` — MIT license template
- `CODEOWNERS`
- `.gitignore`
- `.editorconfig`
- `.github/PULL_REQUEST_TEMPLATE.md`
- `.github/ISSUE_TEMPLATE/bug_report.yml`
- `.github/ISSUE_TEMPLATE/feature_request.yml`
- `.github/workflows/ci.yml`
- `.github/workflows/release.yml`

## Quick start
```bash
chmod +x scripts/init-repo.sh
./scripts/init-repo.sh my-new-repo public
```

Arguments:
- repo name: required
- visibility: optional (`public` or `private`, default `public`)

## Requirements
- `git`
- `gh` (GitHub CLI)
- authenticated GitHub CLI session: `gh auth login`

## Notes
- Update `CODEOWNERS` and email placeholders before publishing.
- The release workflow creates a GitHub Release when you push a tag like `v1.0.0`.
