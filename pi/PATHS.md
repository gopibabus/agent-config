# Pi — paths

Config dir: `~/.pi/agent` (override: `PI_CODING_AGENT_DIR`). Not installed yet.

## Prerequisites

None beyond Pi itself.

## Files

| Category | Repo file | Install path |
|---|---|---|
| instructions | `../agents/AGENTS.md` | `~/.pi/agent/AGENTS.md` (symlink) |
| skills | `../agents/skills/skills.md` | read directly from `~/.agents/skills/` (Pi v0.54.0+) |

## Not used

| Category | Native location |
|---|---|
| settings | `~/.pi/agent/settings.json` (plus `models.json`, `keybindings.json`) |
| hooks | extensions in `~/.pi/agent/extensions/` |
| agents | not built in (extensions or packages) |
| commands | prompt templates in `~/.pi/agent/prompts/` |
| mcp | `~/.pi/agent/mcp.json` (v0.99.0+) |

## Install

```sh
mkdir -p ~/.pi/agent
ln -sf ~/.agents/AGENTS.md ~/.pi/agent/AGENTS.md
```

## Secrets

`~/.pi/agent/auth.json`, and keys in `models.json` and `mcp.json`. Commit only `*.example` versions.
