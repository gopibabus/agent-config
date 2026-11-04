# Claude Code — paths

Config dir: `~/.claude` (override: `CLAUDE_CONFIG_DIR`, which also moves `~/.claude.json`).

## Prerequisites

| Tool | Used by | Install |
|---|---|---|
| caveman + caveman-proxy | most hooks, MCP `caveman`, status line, `ANTHROPIC_BASE_URL` (local proxy on `127.0.0.1:8787`) | `npm i -g @caveman-ai/cli`, then its setup (writes the caveman hooks) |
| rtk | `PreToolUse` Bash hook | see rtk docs |
| herdr | `herdr-agent-state.sh` (installed and overwritten by herdr) | herdr's Claude integration |
| Worktrunk (`wt`) | `hooks/worktrunk/*` | see Worktrunk docs |
| jq, python3 | hook scripts | `brew install jq` |

The caveman hook commands pin a Node path (`$HOME/.nvm/versions/node/v24.19.0/...`). Re-run
caveman's setup on a new machine instead of trusting that path.

## Files

| Category | Repo file | Install path |
|---|---|---|
| instructions | `instructions/CLAUDE.md` | `~/.claude/CLAUDE.md` (imports `~/.agents/AGENTS.md`) |
| instructions | `instructions/RTK.md` | `~/.claude/RTK.md` |
| settings | `settings/settings.json` | `~/.claude/settings.json` |
| hooks | `hooks/herdr-agent-state.sh` | `~/.claude/hooks/herdr-agent-state.sh` |
| hooks | `hooks/worktrunk/*.sh` | `~/.claude/hooks/worktrunk/` |
| statusline | `statusline/statusline.sh` | `~/.claude/statusline/statusline.sh` |
| plugins | `plugins/plugins.md` | not installed (install commands) |
| mcp | `mcp/mcp.json.example` | `mcpServers` in `~/.claude.json` (user scope, use the commands below) |
| skills | `../agents/skills/skills.md` | `~/.claude/skills/` (symlinks into `~/.agents/skills/`, made by the skills CLI) |

Hooks are registered in `settings.json` under `hooks`; the scripts above are what they call.

## Not used

| Category | Native location |
|---|---|
| agents | `~/.claude/agents/*.md` |
| commands | `~/.claude/commands/*.md` |

## Install

```sh
mkdir -p ~/.claude/hooks/worktrunk ~/.claude/statusline
cp instructions/CLAUDE.md instructions/RTK.md ~/.claude/
cp settings/settings.json ~/.claude/
cp hooks/herdr-agent-state.sh ~/.claude/hooks/
cp hooks/worktrunk/*.sh ~/.claude/hooks/worktrunk/
cp statusline/statusline.sh ~/.claude/statusline/

claude mcp add -s user -t http automem https://gopibabu-automem-mcp.up.railway.app/mcp -H "Authorization: Bearer $AUTOMEM_TOKEN"
claude mcp add -s user -t http context7 https://mcp.context7.com/mcp -H "Authorization: Bearer $CONTEXT7_API_KEY"
claude mcp add -s user -t http langchain-docs https://docs.langchain.com/mcp
claude mcp add -s user caveman ~/.caveman/bin/caveman-mcp
```

Then follow [plugins/plugins.md](plugins/plugins.md).

## Secrets

| Env var | Used in |
|---|---|
| `AUTOMEM_TOKEN` | automem MCP header |
| `CONTEXT7_API_KEY` | context7 MCP header |

Never commit `~/.claude.json` or `~/.claude/.credentials.json`.
