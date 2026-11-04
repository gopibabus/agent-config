# OpenCode — paths

Config dir: `~/.config/opencode` (overrides: `OPENCODE_CONFIG` for one config file,
`OPENCODE_CONFIG_DIR` for an extra dir).

## Prerequisites

| Tool | Used by | Install |
|---|---|---|
| herdr | `cli.json`, `tui.jsonc`, `herdr-tui-session.js`, `plugins/herdr-agent-state.js` | herdr's OpenCode integration (writes and overwrites these, so they are not in this repo) |

## Files

| Category | Repo file | Install path |
|---|---|---|
| instructions | `../agents/AGENTS.md` | `~/.config/opencode/AGENTS.md` (symlink) |
| settings | `settings/opencode.json` | `~/.config/opencode/opencode.json` |
| skills | `../agents/skills/skills.md` | read directly from `~/.agents/skills/` |

## Not used

| Category | Native location |
|---|---|
| hooks | JS/TS plugins in `~/.config/opencode/plugins/` |
| agents | `~/.config/opencode/agents/` |
| commands | `~/.config/opencode/commands/` |
| mcp | `mcp` key in `opencode.json` |

## Install

```sh
mkdir -p ~/.config/opencode
cp settings/opencode.json ~/.config/opencode/
ln -sf ~/.agents/AGENTS.md ~/.config/opencode/AGENTS.md
```

Without its own `AGENTS.md`, OpenCode falls back to `~/.claude/CLAUDE.md`.

## Secrets

`~/.local/share/opencode/auth.json` (provider keys from `/connect`) and
`~/.config/opencode/service.json` (password). Never commit either.
