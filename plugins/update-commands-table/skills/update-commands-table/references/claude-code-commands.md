# Claude Code: Commands and Skills

> Last updated: 2026-04-02
> Sources: docs.anthropic.com, code.claude.com/docs/en/commands, GitHub issues #8590, #9119

## Legend

- **Yes** — available
- **No** — not available
- **?** — no reliable data, needs verification
- **Command** — built-in client function, handled by the interface
- **Skill** — prompt template, executed by the model via Skill tool

## Commands and skills table

| Command | Type | Description | CMD | VS Code 1.113 |
|---|---|---|---|---|
| `/add-dir <path>` | Command | Add working directory | Yes | No |
| `/agents` | Command | Manage agents | Yes | No |
| `/branch [name]` | Command | Branch conversation (alias: `/fork`) | Yes | ? |
| `/btw <question>` | Command | Side question without history | Yes | ? |
| `/chrome` | Command | Configure Claude in Chrome | Yes | No |
| `/claude-api` | **Skill** | Help with Claude API / Anthropic SDK | Yes | Yes |
| `/clear` | Command | Clear history (aliases: `/reset`, `/new`) | Yes | Yes |
| `/color [color]` | Command | Input line color | Yes | No |
| `/compact [instructions]` | Command | Compress conversation context | Yes | Yes |
| `/config` | Command | Settings (alias: `/settings`) | Yes | No |
| `/context` | Command | Context visualization | Yes | ? |
| `/copy [N]` | Command | Copy response to clipboard | Yes | No |
| `/cost` | Command | Token statistics | Yes | No |
| `/desktop` | Command | Continue in desktop app | Yes | No |
| `/diff` | Command | View uncommitted changes | Yes | ? |
| `/doctor` | Command | Installation diagnostics | Yes | No |
| `/effort [level]` | Command | Model effort level | Yes | ? |
| `/exit` | Command | Exit CLI (alias: `/quit`) | Yes | No |
| `/export [filename]` | Command | Export conversation | Yes | No |
| `/extra-usage` | Command | Extra usage when at limits | Yes | ? |
| `/fast [on|off]` | Command | Fast mode | Yes | Yes |
| `/feedback` | Command | Feedback (alias: `/bug`) | Yes | ? |
| `/help` | Command | Help | Yes | Yes |
| `/hooks` | Command | Hook configurations | Yes | No |
| `/ide` | Command | IDE integrations | Yes | No |
| `/init` | Command | Initialize CLAUDE.md | Yes | ? |
| `/insights` | Command | Session insights | Yes | ? |
| `/install-github-app` | Command | Claude GitHub Actions | Yes | No |
| `/install-slack-app` | Command | Claude for Slack | Yes | ? |
| `/keybindings` | Command | Keybindings configuration | Yes | No |
| `/keybindings-help` | **Skill** | Help with keybindings | Yes | Yes |
| `/login` | Command | Log in to account | Yes | No |
| `/logout` | Command | Log out of account | Yes | No |
| `/loop` | **Skill** | Repeat command on interval | Yes | ? |
| `/mcp` | Command | MCP servers and OAuth | Yes | Yes |
| `/memory` | Command | CLAUDE.md memory files | Yes | No |
| `/mobile` | Command | QR code for mobile app | Yes | No |
| `/model [model]` | Command | Select AI model | Yes | Yes |
| `/passes` | Command | Share a free week | Yes | ? |
| `/permissions` | Command | Permissions (alias: `/allowed-tools`) | Yes | No |
| `/plan [desc]` | Command | Planning mode | Yes | ? |
| `/plugin` | Command | View and manage plugins | Yes | Yes |
| `/plugin marketplace ...` | Command | Marketplace subcommands (add, remove, etc.) | Yes | No |
| `/pr-comments [PR]` | Command | Comments from GitHub PR | Yes | ? |
| `/privacy-settings` | Command | Privacy (Pro/Max) | Yes | ? |
| `/release-notes` | Command | Changelog | Yes | ? |
| `/reload-plugins` | Command | Reload plugins | Yes | ? |
| `/remote-control` | Command | Remote control (alias: `/rc`) | Yes | Yes |
| `/remote-env` | Command | Environment for web sessions | Yes | ? |
| `/rename [name]` | Command | Rename session | Yes | ? |
| `/resume [session]` | Command | Resume conversation (alias: `/continue`) | Yes | ? |
| `/rewind` | Command | Rewind conversation/code (alias: `/checkpoint`) | Yes | UI button |
| `/sandbox` | Command | Sandbox mode | Yes | ? |
| `/schedule` | **Skill** | Scheduled agents (cron) | Yes | Yes |
| `/security-review` | Command | Security vulnerability analysis | Yes | ? |
| `/simplify` | **Skill** | Code quality review | Yes | Yes |
| `/skills` | Command | List skills | Yes | ? |
| `/stats` | Command | Usage statistics | Yes | ? |
| `/status` | Command | Version, model, account | Yes | No |
| `/statusline` | Command | Status line configuration | Yes | No |
| `/stickers` | Command | Order stickers | Yes | ? |
| `/tasks` | Command | Background tasks (alias: `/bashes`) | Yes | ? |
| `/terminal-setup` | Command | Terminal shortcuts | Yes | No |
| `/theme` | Command | Color theme | Yes | No |
| `/update-config` | **Skill** | Hooks and automations in `settings.json` | Yes | Yes |
| `/upgrade` | Command | Upgrade plan | Yes | ? |
| `/usage` | Command | Limits and quotas | Yes | Yes |
| `/vim` | Command | Vim/Normal mode | Yes | No |
| `/voice` | Command | Voice dictation | Yes | ? |

## Notes

- **VS Code** — data based on Anthropic documentation and GitHub issues (#8590, #9119). Configuration commands (`/config`, `/hooks`, `/memory`, `/permissions`, `/doctor`) are not available in the GUI panel — use the built-in terminal with `claude` instead.
- **Skills** are available everywhere Claude Code model runs, since they are executed by the model, not the client.
- **`/rewind` in VS Code** is implemented as a UI button on message hover, not as a slash command.
