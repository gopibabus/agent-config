# agent-config

My global (user-level) configuration for AI coding agents, kept in one place so I can
set up a new machine from it. This is a reference: copy files into place by following
each folder's `PATHS.md`. Nothing here is installed automatically.

## Layout

```
agents/        vendor-neutral, mirrors ~/.agents (shared AGENTS.md, skills lockfile)
claude-code/   ~/.claude
opencode/      ~/.config/opencode
pi/            ~/.pi/agent
codex/         ~/.codex
copilot/       ~/.copilot
```

Every agent folder uses the same structure, and only includes the categories that agent actually has:

| Folder | Holds |
|---|---|
| `instructions/` | global instructions (`CLAUDE.md`, `AGENTS.md`, rules) |
| `settings/` | main settings file |
| `hooks/` | hooks, or the agent's equivalent (plugins, extensions) |
| `agents/` | subagents |
| `commands/` | slash commands, prompts |
| `mcp/` | MCP server config |
| `PATHS.md` | prerequisites, each file's install path, unused categories, secrets |

Files keep the names the agent expects. Paths use `~` or `$HOME`, never a username.

## Shared config

- **Instructions:** cross-agent rules live once in [agents/AGENTS.md](agents/AGENTS.md), installed at
  `~/.agents/AGENTS.md`. No agent reads that path on its own, so each one links to it:
  Claude Code imports it from `CLAUDE.md`; the others symlink their global instructions file to it.
- **Skills:** installed with the [skills CLI](https://github.com/vercel-labs/skills) into
  `~/.agents/skills/`. OpenCode, Pi, Codex and Copilot read that folder directly; Claude Code gets
  symlinks. [agents/skills/skills.md](agents/skills/skills.md) lists them, and the lockfile restores them.

## New machine

1. Install the agents you use and their prerequisites (listed in each `PATHS.md`).
2. Follow [agents/PATHS.md](agents/PATHS.md) to set up `~/.agents` and restore skills.
3. Follow each agent's `PATHS.md`.

## Secrets

This repo is public. Real secret files are never committed: config that needs a secret is stored
as `*.example` with `${VAR}` placeholders, and each `PATHS.md` lists the env vars it needs.
