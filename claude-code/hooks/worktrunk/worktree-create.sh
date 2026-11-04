#!/usr/bin/env bash
# Claude Code WorktreeCreate hook: create worktrees with Worktrunk instead of plain git,
# so wt's pre-start hook (wt step copy-ignored) warms vendor/, node_modules/, .env.
# Contract: stdin JSON {cwd, name}; last stdout line = worktree path; non-zero = fail.
# Everything except the final path goes to stderr. No fallback to plain git on failure.
set -euo pipefail

input=$(cat)
name=$(jq -r '.name' <<<"$input")
cwd=$(jq -r '.cwd' <<<"$input")

command -v wt >/dev/null || { echo "worktree-create: wt (Worktrunk) not on PATH" >&2; exit 1; }

# Primary worktree = repo root, even when Claude is already inside a linked worktree.
root=$(git -C "$cwd" worktree list --porcelain | sed -n '1s/^worktree //p')
[ -n "$root" ] || { echo "worktree-create: $cwd is not in a git repository" >&2; exit 1; }

path="$root/.claude/worktrees/$name"

# Same layout and branch name Claude Code uses by default.
wt -C "$root" switch --create "worktree-$name" --path "$path" --no-cd -y >&2

echo "$path"
