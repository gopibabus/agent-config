@~/.agents/AGENTS.md

## Memory
At the start of each session, use recall_memory to check AutoMem for relevant
project context and prior decisions. Use store_memory to save architectural
decisions, bugs and fixes, and established patterns as they come up.

## Skill enforcement
Always load and apply the remove-ai-marks skill to generated output before returning it — every session, regardless of task type.

## Plugins vs skills
Install skills for Claude Code with `-a claude-code` (see the shared skills rule above).
Before replacing a plugin with skills.sh skills, run `claude plugin details <plugin>`.
If it bundles MCP servers, hooks or agents, keep the plugin: skills.sh only installs skills.

@RTK.md
