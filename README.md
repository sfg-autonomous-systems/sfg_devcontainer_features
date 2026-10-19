# SFG Devcontainer Features

Devcontainer Features used across SFG projects, published to GHCR. Based on [devcontainers/feature-starter](https://github.com/devcontainers/feature-starter).

| Feature                              | Reference                                                                 | Purpose                                                     |
| ------------------------------------ | ------------------------------------------------------------------------- | ----------------------------------------------------------- |
| [claude-persist](src/claude-persist) | `ghcr.io/sfg-autonomous-systems/sfg_devcontainer_features/claude-persist` | Persists the Claude Code login and history across rebuilds. |

## Development

Each Feature lives in `src/<feature>/`.

## Releasing

Bump `version` in `src/<feature>/devcontainer-feature.json` (semver) and merge to `main`. The **Release Devcontainer Features** workflow runs on every push to `main` that touches `src/` and publishes each Feature whose version isn't on GHCR yet. Unchanged versions are skipped.

The first release creates the GHCR packages as private. Set them to public, or grant the org access, under the package settings so devcontainers can pull them.
