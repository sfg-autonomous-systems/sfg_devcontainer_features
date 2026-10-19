# Claude Code persistence (`claude-persist`)

Persists the Claude Code login and conversation history across container rebuilds via a shared Docker volume.

## Usage

To load the Feature in all your dev containers without changing project repos, add it to your VS Code **user** settings:

```json
"dev.containers.defaultFeatures": {
    "ghcr.io/sfg-autonomous-systems/sfg_devcontainer_features/claude-persist": {}
}
```

## Known limits

- All containers share one volume (`claude-code-config`), so one login and one history apply across all projects.
- Host conversations don't carry into containers.
- Deleting the volume (`docker volume rm claude-code-config`) means logging in again.
- The volume's ownership is set by the first container that mounts it while it is empty. If a later container runs as a different user ID, the Feature fixes the ownership on container start with `sudo chown`. On images without passwordless `sudo`, it prints a warning instead, and Claude Code can't save its login.
