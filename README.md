# SFG Devcontainer Features

Devcontainer features used across SFG projects, published to GHCR. Based on [devcontainers/feature-starter](https://github.com/devcontainers/feature-starter).

| Feature                              | Reference                                                                 | Purpose                                                     |
| ------------------------------------ | ------------------------------------------------------------------------- | ----------------------------------------------------------- |
| [claude-persist](src/claude-persist) | `ghcr.io/sfg-autonomous-systems/sfg_devcontainer_features/claude-persist` | Persists the Claude Code login and history across rebuilds. |

## Development

Each feature lives in `src/<feature>/`.

## Releasing

Bump `version` in `src/<feature>/devcontainer-feature.json` (semver) and merge to `main`. The **Release Devcontainer Features** workflow runs on every push to `main` that touches `src/` and publishes each feature whose version isn't on GHCR yet. Unchanged versions are skipped.

## Setup

The features must be public on GHCR so devcontainers can pull them without logging in.

### Allow Public Packages

1. Navigate to the organization's **Settings** > **Packages**.
2. Under **Package creation**, check **Public** and **Internal**.
3. Click **Save**.

### Make New Packages Public

The first release of a feature may create its GHCR package as private. After the first release of each new feature:

1. Navigate to the package on the organization's **Packages** tab.
2. Go to **Package settings** > **Danger Zone** > **Change visibility** and select **Public**.

> [!note]
> A package's visibility is set separately from its access settings: **Inherit access from source repository** only controls who has which role on the package. Packages first published while their repository was private stay private. Public packages can't be made private again.
