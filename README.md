# sashulyaf-marketplace

Collection of custom Claude Code plugins by SashulyaF.

## Project structure

```
sashulyaf-marketplace/
├── .claude-plugin/
│   └── marketplace.json              # Marketplace catalog
├── plugins/
│   └── update-commands-table/
│       ├── .claude-plugin/
│       │   └── plugin.json           # Plugin manifest + hooks
│       ├── scripts/
│       │   └── protect-file.sh       # PreToolUse guard (blocks direct edits)
│       └── skills/
│           └── update-commands-table/
│               ├── SKILL.md          # Skill instructions
│               └── references/
│                   └── claude-code-commands.md  # Template (copied to project on first run)
├── LICENSE
└── README.md
```

## Plugins

| Plugin | Description |
|---|---|
| `update-commands-table` | Manages a reference table of Claude Code commands and skills with availability info across CMD and VS Code |

## Installation

1. Add the marketplace:
   ```
   /plugin marketplace add sashulyaf-marketplace
   ```

2. Install a plugin (project scope only):
   ```
   /plugin add update-commands-table --scope project
   ```

> **Warning:** Do not install globally. The plugin copies a template file to `docs/` on session start. Global installation will create this file in every project.

## Usage

After installation, use the skill by typing:
- `/update-commands-table` or ask Claude to update the commands table

## License

[MIT](LICENSE)
