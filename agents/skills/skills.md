# Skills

Installed with the [skills CLI](https://github.com/vercel-labs/skills). Canonical copies live in `~/.agents/skills/`, and the CLI symlinks them into agents that need it.

To restore everything at once, use the lockfile (see [PATHS.md](../PATHS.md)). Use the commands below to install a single skill, or as a fallback.

## From skills.sh

### composiohq/composio

```sh
npx skills add https://github.com/composiohq/composio --skill composio -g -a claude-code -y
```

### cursor/plugins

```sh
npx skills add https://github.com/cursor/plugins --skill unslop -g -a claude-code -y
```

### googlechrome/modern-web-guidance

```sh
npx skills add https://github.com/googlechrome/modern-web-guidance --skill chrome-extensions -g -a claude-code -y
npx skills add https://github.com/googlechrome/modern-web-guidance --skill modern-web-guidance -g -a claude-code -y
```

### juliusbrussee/caveman

```sh
npx skills add https://github.com/juliusbrussee/caveman --skill caveman -g -a claude-code -y
```

### Leonxlnx/taste-skill

```sh
npx skills add https://github.com/Leonxlnx/taste-skill --skill design-taste-frontend -g -a claude-code -y
```

### makenotion/skills

```sh
npx skills add https://github.com/makenotion/skills --skill notion-apps -g -a claude-code -y
npx skills add https://github.com/makenotion/skills --skill notion-cli -g -a claude-code -y
```

### mattpocock/skills

```sh
npx skills add https://github.com/mattpocock/skills --skill ask-matt -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill chief-of-staff -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill claude-handoff -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill code-review -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill codebase-design -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill diagnosing-bugs -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill domain-modeling -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill git-guardrails-claude-code -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill grill-me -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill grill-with-docs -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill grilling -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill handoff -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill implement -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill implement-spec -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill improve-codebase-architecture -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill loop-me -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill migrate-to-shoehorn -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill pr -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill prototype -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill research -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill retro -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill scaffold-exercises -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill setup-matt-pocock-skills -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill setup-pre-commit -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill setup-ts-deep-modules -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill tdd -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill teach -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill to-questionnaire -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill to-spec -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill to-tickets -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill triage -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill wait-what -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill wayfinder -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill wizard -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill writing-beats -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill writing-for-agents -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill writing-fragments -g -a claude-code -y
npx skills add https://github.com/mattpocock/skills --skill writing-shape -g -a claude-code -y
```

### obra/superpowers

```sh
npx skills add https://github.com/obra/superpowers --skill brainstorming -g -a claude-code -y
npx skills add https://github.com/obra/superpowers --skill diagnosing-superpowers -g -a claude-code -y
npx skills add https://github.com/obra/superpowers --skill dispatching-parallel-agents -g -a claude-code -y
npx skills add https://github.com/obra/superpowers --skill executing-plans -g -a claude-code -y
npx skills add https://github.com/obra/superpowers --skill finishing-a-development-branch -g -a claude-code -y
npx skills add https://github.com/obra/superpowers --skill receiving-code-review -g -a claude-code -y
npx skills add https://github.com/obra/superpowers --skill requesting-code-review -g -a claude-code -y
npx skills add https://github.com/obra/superpowers --skill subagent-driven-development -g -a claude-code -y
npx skills add https://github.com/obra/superpowers --skill systematic-debugging -g -a claude-code -y
npx skills add https://github.com/obra/superpowers --skill test-driven-development -g -a claude-code -y
npx skills add https://github.com/obra/superpowers --skill using-git-worktrees -g -a claude-code -y
npx skills add https://github.com/obra/superpowers --skill using-superpowers -g -a claude-code -y
npx skills add https://github.com/obra/superpowers --skill verification-before-completion -g -a claude-code -y
npx skills add https://github.com/obra/superpowers --skill writing-plans -g -a claude-code -y
npx skills add https://github.com/obra/superpowers --skill writing-skills -g -a claude-code -y
```

### qodo-ai/qodo-skills

```sh
npx skills add https://github.com/qodo-ai/qodo-skills --skill qodo-codebase-wisdom -g -a claude-code -y
npx skills add https://github.com/qodo-ai/qodo-skills --skill qodo-get-rules -g -a claude-code -y
npx skills add https://github.com/qodo-ai/qodo-skills --skill qodo-manage-standards -g -a claude-code -y
npx skills add https://github.com/qodo-ai/qodo-skills --skill qodo-review -g -a claude-code -y
npx skills add https://github.com/qodo-ai/qodo-skills --skill qodo-review-notes -g -a claude-code -y
npx skills add https://github.com/qodo-ai/qodo-skills --skill qodo-review-resolver -g -a claude-code -y
npx skills add https://github.com/qodo-ai/qodo-skills --skill qodo-setup -g -a claude-code -y
```

### tt-a1i/archify

```sh
npx skills add https://github.com/tt-a1i/archify --skill archify -g -a claude-code -y
```

### uditakhourii/adhd

```sh
npx skills add https://github.com/uditakhourii/adhd --skill adhd -g -a claude-code -y
```

### upstash/context7

```sh
npx skills add https://github.com/upstash/context7 --skill context7-mcp -g -a claude-code -y
```

### vercel-labs/agent-browser

```sh
npx skills add https://github.com/vercel-labs/agent-browser --skill agent-browser -g -a claude-code -y
```

### vercel-labs/skills

```sh
npx skills add https://github.com/vercel-labs/skills --skill find-skills -g -a claude-code -y
```

## Synced from claude.ai

Claude Code syncs these into `~/.claude/skills/synced/` from your claude.ai account. Nothing to install.

- algorithmic-art
- brand-guidelines
- built-in-browser
- canvas-design
- chrome-browser
- computer-use
- deep-research
- doc-coauthoring
- docs
- docx
- google-workspace
- grill-me
- humanizer
- import-memory
- internal-comms
- learn
- morning
- pdf
- pptx
- pstack-unslop
- remove-ai-marks
- skill-creator
- slack-gif-creator
- teach
- theme-factory
- web-artifacts-builder
- xlsx

## Not in the lockfile

- `composio-cli`: installed by `composio login`, which symlinks it into `~/.claude/skills/`.
