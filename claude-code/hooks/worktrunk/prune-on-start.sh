#!/usr/bin/env bash
# SessionStart hook: prune worktrees/branches merged into the default branch (wt default
# min-age 1d; dirty worktrees are kept). Detached and fully silent: SessionStart stdout
# would be injected into Claude's context.
cwd=$(jq -r '.cwd')
command -v wt >/dev/null || exit 0
top=$(git -C "$cwd" rev-parse --show-toplevel 2>/dev/null) || exit 0
primary=$(git -C "$cwd" worktree list --porcelain | sed -n '1s/^worktree //p')
# Only from the primary checkout, so a session never prunes the worktree it is running in.
[ "$top" = "$primary" ] || exit 0
nohup wt -C "$primary" step prune -y >/dev/null 2>&1 </dev/null &
exit 0
