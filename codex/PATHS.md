# Codex CLI — paths

Config dir: `~/.codex` (override: `CODEX_HOME`). Not installed yet.

## Prerequisites

None beyond Codex itself.

## Files

| Category | Repo file | Install path |
|---|---|---|
| instructions | `../agents/AGENTS.md` | `~/.codex/AGENTS.md` (symlink) |
| skills | `../agents/skills/skills.md` | read directly from `~/.agents/skills/` |

## Not used

| Category | Native location |
|---|---|
| settings | `~/.codex/config.toml` |
| hooks | `~/.codex/hooks.json` (enable with `[features] hooks = true`) |
| agents | `~/.codex/agents/*.toml` |
| commands | none (`~/.codex/prompts/` is deprecated in favour of skills) |
| mcp | `[mcp_servers.<id>]` in `config.toml` |

## Install

```sh
mkdir -p ~/.codex
ln -sf ~/.agents/AGENTS.md ~/.codex/AGENTS.md
```

`~/.codex/AGENTS.override.md`, if present, wins over `AGENTS.md`.

## Secrets

`~/.codex/auth.json` and `env` values under `mcp_servers`. Commit only `*.example` versions.
