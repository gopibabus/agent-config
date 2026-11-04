#!/usr/bin/env bash
# Status line wrapper: runs the newest caveman statusline script from the plugin cache.
# The cache folder name changes with every caveman version, so the path is resolved at runtime.
script=$(ls -t "${CLAUDE_CONFIG_DIR:-$HOME/.claude}"/plugins/cache/caveman/caveman/*/src/hooks/caveman-statusline.sh 2>/dev/null | head -n 1)
[ -n "$script" ] || exit 0
exec bash "$script"
