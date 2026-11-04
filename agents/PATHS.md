# agents (vendor-neutral) — paths

Mirrors `~/.agents/` on a machine. `~/.agents/skills/` is the shared skills location
(read directly by OpenCode, Pi, Codex and Copilot; Claude Code gets symlinks). No agent reads
`~/.agents/AGENTS.md` on its own, so each agent links to it (see its `PATHS.md`).

## Prerequisites

- Node.js (for `npx skills`)

## Files

| Repo file | Install path |
|---|---|
| `AGENTS.md` | `~/.agents/AGENTS.md` |
| `.skill-lock.json` | `~/.agents/.skill-lock.json` |
| `skills/skills.md` | not installed (reference: one install command per skill) |

## Install

```sh
mkdir -p ~/.agents
cp AGENTS.md .skill-lock.json ~/.agents/
```

Restore all skills from the lockfile. Install the agents first, then run this from a plain
terminal, not inside an agent session (inside one, the CLI targets only that agent):

```sh
npx skills update -g -y
```

> Workaround, not a documented feature: the skills CLI (v1.7.6) has no global restore command,
> but `update -g` reinstalls every locked skill that is missing on disk. If a future version
> drops this, use the commands in [skills/skills.md](skills/skills.md).

## Secrets

None.
