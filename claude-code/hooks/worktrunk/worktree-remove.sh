#!/usr/bin/env bash
# Claude Code WorktreeRemove hook: remove with Worktrunk so its remove hooks run.
# Branch is deleted only if merged (wt default); unmerged work stays on its branch.
# Exit 0 means Claude treats the directory as gone, so removal runs in the foreground.
set -euo pipefail

path=$(jq -r '.worktree_path')
[ -d "$path" ] || exit 0

root=$(git -C "$path" worktree list --porcelain | sed -n '1s/^worktree //p')
wt -C "$root" remove "$path" --foreground --force -y >&2
