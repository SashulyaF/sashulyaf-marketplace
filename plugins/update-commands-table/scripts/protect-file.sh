#!/usr/bin/env bash
# Guard hook: blocks direct Edit/Write to docs/claude-code-commands.md
# unless the /update-commands-table skill is currently active.

INPUT=$(cat)

# Extract file_path from tool_input
FILE_PATH=$(echo "$INPUT" | grep -o '"file_path"[[:space:]]*:[[:space:]]*"[^"]*"' | sed 's/.*"file_path"[[:space:]]*:[[:space:]]*"//;s/"$//')

# Only care about the commands table file
if [[ "$FILE_PATH" != *docs/claude-code-commands.md* ]]; then
  exit 0
fi

# Extract transcript_path to check if skill is active
TRANSCRIPT=$(echo "$INPUT" | grep -o '"transcript_path"[[:space:]]*:[[:space:]]*"[^"]*"' | sed 's/.*"transcript_path"[[:space:]]*:[[:space:]]*"//;s/"$//')

# If transcript exists, check whether the skill was recently invoked
if [[ -n "$TRANSCRIPT" && -f "$TRANSCRIPT" ]]; then
  if grep -q 'update-commands-table' "$TRANSCRIPT" 2>/dev/null; then
    # Skill is active — allow the edit
    exit 0
  fi
fi

# No skill context found — block with explanation
cat <<'EOF'
{"hookSpecificOutput":{"hookEventName":"PreToolUse","permissionDecision":"deny","permissionDecisionReason":"Direct editing of docs/claude-code-commands.md is not allowed. Use the /update-commands-table skill instead — it ensures correct table format, alphabetical order, and date updates."}}
EOF
exit 0
