# Claude Code: Commands and Skills

> Last updated: 2026-04-03
> Sources: docs.anthropic.com, code.claude.com/docs/en/commands, GitHub issues #8590, #9119

## Legend

- **Yes** — available
- **No** — not available
- **?** — no reliable data, needs verification
- **UI button** — available as a UI element, not a slash command

## Commands and skills table

| Command | Description | CMD | VS Code 1.113 |
|---|---|---|---|
| `/add-dir <path>` | Add working directory | Yes | No |
| `/agents` | Manage agents | Yes | No |
| `/branch [name]` | Branch conversation (alias: `/fork`) | Yes | ? |
| `/btw <question>` | Side question without history | Yes | ? |
| `/chrome` | Configure Claude in Chrome | Yes | No |
| `/claude-api` | Help with Claude API / Anthropic SDK | Yes | Yes |
| `/clear` | Clear history (aliases: `/reset`, `/new`) | Yes | Yes |
| `/color [color]` | Input line color | Yes | No |
| `/compact [instructions]` | Compress conversation context | Yes | Yes |
| `/config` | Settings (alias: `/settings`) | Yes | No |
| `/context` | Context visualization | Yes | ? |
| `/copy [N]` | Copy response to clipboard | Yes | No |
| `/cost` | Token statistics | Yes | No |
| `/desktop` | Continue in desktop app | Yes | No |
| `/diff` | View uncommitted changes | Yes | ? |
| `/doctor` | Installation diagnostics | Yes | No |
| `/effort [level]` | Model effort level | Yes | ? |
| `/exit` | Exit CLI (alias: `/quit`) | Yes | No |
| `/export [filename]` | Export conversation | Yes | No |
| `/extra-usage` | Extra usage when at limits | Yes | ? |
| `/fast [on|off]` | Fast mode | Yes | Yes |
| `/feedback` | Feedback (alias: `/bug`) | Yes | ? |
| `/help` | Help | Yes | Yes |
| `/hooks` | Hook configurations | Yes | No |
| `/ide` | IDE integrations | Yes | No |
| `/init` | Initialize CLAUDE.md | Yes | ? |
| `/insights` | Session insights | Yes | ? |
| `/install-github-app` | Claude GitHub Actions | Yes | No |
| `/install-slack-app` | Claude for Slack | Yes | ? |
| `/keybindings` | Keybindings configuration | Yes | No |
| `/keybindings-help` | Help with keybindings | Yes | Yes |
| `/login` | Log in to account | Yes | No |
| `/logout` | Log out of account | Yes | No |
| `/loop` | Repeat command on interval | Yes | ? |
| `/mcp` | MCP servers and OAuth | Yes | Yes |
| `/memory` | CLAUDE.md memory files | Yes | No |
| `/mobile` | QR code for mobile app | Yes | No |
| `/model [model]` | Select AI model | Yes | Yes |
| `/passes` | Share a free week | Yes | ? |
| `/permissions` | Permissions (alias: `/allowed-tools`) | Yes | No |
| `/plan [desc]` | Planning mode | Yes | ? |
| `/plugin` | View and manage plugins | Yes | Yes |
| `/plugin marketplace ...` | Marketplace subcommands (add, remove, etc.) | Yes | No |
| `/pr-comments [PR]` | Comments from GitHub PR | Yes | ? |
| `/privacy-settings` | Privacy (Pro/Max) | Yes | ? |
| `/release-notes` | Changelog | Yes | ? |
| `/reload-plugins` | Reload plugins | Yes | ? |
| `/remote-control` | Remote control (alias: `/rc`) | Yes | Yes |
| `/remote-env` | Environment for web sessions | Yes | ? |
| `/rename [name]` | Rename session | Yes | ? |
| `/resume [session]` | Resume conversation (alias: `/continue`) | Yes | ? |
| `/rewind` | Rewind conversation/code (alias: `/checkpoint`) | Yes | UI button |
| `/sandbox` | Sandbox mode | Yes | ? |
| `/schedule` | Scheduled agents (cron) | Yes | Yes |
| `/security-review` | Security vulnerability analysis | Yes | ? |
| `/simplify` | Code quality review | Yes | Yes |
| `/skills` | List skills | Yes | ? |
| `/stats` | Usage statistics | Yes | ? |
| `/status` | Version, model, account | Yes | No |
| `/statusline` | Status line configuration | Yes | No |
| `/stickers` | Order stickers | Yes | ? |
| `/tasks` | Background tasks (alias: `/bashes`) | Yes | ? |
| `/terminal-setup` | Terminal shortcuts | Yes | No |
| `/testPluginUpdate` | Test plugin update via marketplace | No | No |
| `/theme` | Color theme | Yes | No |
| `/update-config` | Hooks and automations in `settings.json` | Yes | Yes |
| `/upgrade` | Upgrade plan | Yes | ? |
| `/usage` | Limits and quotas | Yes | Yes |
| `/vim` | Vim/Normal mode | Yes | No |
| `/voice` | Voice dictation | Yes | ? |

## Notes

- **VS Code** — data based on Anthropic documentation and GitHub issues (#8590, #9119). Configuration commands (`/config`, `/hooks`, `/memory`, `/permissions`, `/doctor`) are not available in the GUI panel — use the built-in terminal with `claude` instead.
- **Skills** are available everywhere Claude Code model runs, since they are executed by the model, not the client.
- **`/rewind` in VS Code** is implemented as a UI button on message hover, not as a slash command.
