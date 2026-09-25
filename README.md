# homebrew-snap

Homebrew tap for [snap](https://github.com/emnlmn/snap) — typed decisions
from a single forward pass.

## Install

```bash
brew install emnlmn/snap/snap
```

Apple Silicon only — the formula wraps the upstream `snap-macos-arm64`
release artifact. Other platforms: download from
[releases](https://github.com/emnlmn/snap/releases).

## Upgrade

```bash
brew upgrade emnlmn/snap/snap
```

`.github/workflows/bump.yml` refreshes the formula daily from the latest
GitHub release, so this tap should never lag more than a day behind.
