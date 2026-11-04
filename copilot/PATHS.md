# GitHub Copilot CLI — paths

Config dir: `~/.copilot` (override: `COPILOT_HOME`). VS Code Copilot reads the same
`~/.copilot/copilot-instructions.md` and `~/.copilot/skills/`. Not set up yet.

## Prerequisites

None beyond Copilot CLI itself.

## Files

| Category | Repo file | Install path |
|---|---|---|
| instructions | `../agents/AGENTS.md` | `~/.copilot/copilot-instructions.md` (symlink) |
| skills | `../agents/skills/skills.md` | read directly from `~/.agents/skills/` |

## Not used

| Category | Native location |
|---|---|
| settings | `~/.copilot/settings.json` (`config.json` is internal state) |
| hooks | `~/.copilot/hooks/` or `hooks` in `settings.json` |
| agents | `~/.copilot/agents/*.agent.md` |
| commands | none |
| mcp | `~/.copilot/mcp-config.json` |

## Install

```sh
mkdir -p ~/.copilot
ln -sf ~/.agents/AGENTS.md ~/.copilot/copilot-instructions.md
```

## Secrets

`~/.copilot/config.json` (auth), `providers.json` (BYOK keys), `mcp-secrets/`, `mcp-oauth-config/`.
Tokens via `COPILOT_GITHUB_TOKEN`, `GH_TOKEN` or `GITHUB_TOKEN`. Never commit these.
