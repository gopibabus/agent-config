# Global agent instructions

Shared by every coding agent on this machine. Installed at `~/.agents/AGENTS.md`;
each agent links to it from its own global instructions path (see each agent's `PATHS.md`).

## Git commits
Never add `Co-Authored-By: ...` (or any AI attribution trailer) to commit messages
or pull request descriptions. Commit messages contain only the change description.

## Installing skills
Whenever I ask to install a skill, install it from skills.sh by default using the
`skills` CLI, not by cloning repos or copying files manually. Example:

```
npx skills add https://github.com/Leonxlnx/taste-skill --skill "design-taste-frontend"
```

Pass the repo URL and, when the repo has more than one skill, the skill's install
name (the `name:` in its SKILL.md frontmatter) via `--skill`.

- Install globally and non-interactively: add `-g -y`, plus `-a <agent>` for the agent you are.
- Update skills with `npx skills update -g`; list them with `npx skills ls -g`.

## Library documentation
Use Context7 MCP to fetch current documentation whenever the user asks about a library, framework, SDK, API, CLI tool, or cloud service — even well-known ones like React, Next.js, Prisma, Express, Tailwind, Django, or Spring Boot. This includes API syntax, configuration, version migration, library-specific debugging, setup instructions, and CLI tool usage. Use even when you think you know the answer — your training data may not reflect recent changes. Prefer this over web search for library docs.

Do not use for: refactoring, writing scripts from scratch, debugging business logic, code review, or general programming concepts.

1. Always start with `resolve-library-id` using the library name and what to look up in the library's documentation, unless the user provides an exact library ID in `/org/project` format
2. Pick the best match (ID format: `/org/project`) by: exact name match, description relevance, code snippet count, source reputation (High/Medium preferred), and benchmark score (higher is better). If results don't look right, try alternate names or queries (e.g., "next.js" not "nextjs", or rephrase the question). Use version-specific IDs when the user mentions a version
3. `query-docs` with the selected library ID and what to look up in the library's documentation (not single words), scoped to a single concept. If the question spans multiple distinct concepts (e.g. routing and auth and caching), make a separate `query-docs` call per concept with the same library ID, unless the question is about how the concepts interact — combined queries dilute ranking and return shallow results for each topic
4. Answer using the fetched docs
