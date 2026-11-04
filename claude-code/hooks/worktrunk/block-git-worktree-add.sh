#!/usr/bin/env bash
# PreToolUse(Bash) guard: raw `git worktree add` skips Worktrunk's copy-ignored warm-up.
# Exit 2 blocks the call and feeds stderr back to Claude.
cmd=$(jq -r '.tool_input.command // empty')
if grep -Eq 'git([[:space:]]+-C[[:space:]]+[^[:space:]]+)?[[:space:]]+worktree[[:space:]]+add' <<<"$cmd"; then
  echo "Blocked: use Worktrunk instead of 'git worktree add' so gitignored deps are copied: wt switch --create <branch> --no-cd -y (add --path <dir> for a custom location, --base <ref> for a base)." >&2
  exit 2
fi
exit 0
