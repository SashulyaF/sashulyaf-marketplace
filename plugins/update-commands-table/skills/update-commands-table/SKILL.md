---
name: update-commands-table
description: >
  This skill should be used when the user asks to "обнови таблицу команд", "добавь команду в таблицу",
  "обнови команду в таблице", "добавь новый скилл в таблицу", "обнови доступность команды в таблице",
  "в Claude появилась новая команда", "исправь информацию о команде в таблице", "удали команду из таблицы",
  "update commands table", "add a new command to the table", "update command availability from the table", "remove a command from the table".
  Updates the reference table of Claude Code commands and skills.
version: 0.5.0
---

# Skill: update Claude Code commands table

The table file is located at `docs/claude-code-commands.md` in the user's project root.
It is automatically copied there on first session start. All edits must be made to this project-local copy, never to the template inside the plugin.

## Table structure

| Command | Description | CMD | VS Code 1.113 |
|---|---|---|---|

- **CMD**: `Yes` / `No` / `?`
- **VS Code 1.113**: `Yes` / `No` / `?` / `UI button`
- Rows are sorted alphabetically by command name

## Workflow

### Step 1 — clarify the action

Ask the user what they want to do. Offer options:

1. **Add a new command or skill**
2. **Update an existing row** (change description, availability, etc.)
3. **Remove a command**

Wait for the user's response before proceeding.

### Step 2 — request data

**If adding a new command:**
Ask for:
- Command name (e.g. `/foo`)
- Short description (what it does)
- Availability in CMD (`Yes` / `No` / `?`)
- Availability in VS Code (`Yes` / `No` / `?`)
- Any aliases? (e.g. `alias: /bar`)

**If updating an existing row:**
Ask for:
- Command name to update
- What to change (field and new value)

**If removing:**
Ask for:
- Command name to remove
- Confirm deletion with the user before editing the file

### Step 3 — apply changes

1. Read the file `docs/claude-code-commands.md`
2. Apply the change:
   - When adding — insert the row in the correct alphabetical position
   - When updating — find the row and modify the relevant field
   - When removing — delete the row from the table
3. Update the date in the file header to today (format: `YYYY-MM-DD`)
4. Save the file

### Step 4 — confirm the result

Show the user the changed row(s) in table format and confirm the file has been updated.

## Important rules

- Never edit the file without getting all required data from the user
- When removing — always get explicit confirmation
- Update the date in the `> Last updated:` line in the file header
- If the user doesn't know a value for an availability field — use `?`
- Command names and descriptions must be in English only. If the user provides them in another language, automatically translate to English before adding to the table
