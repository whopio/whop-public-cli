# Whop CLI

Build and manage your entire business from the terminal. Deploy hosted apps, sell products, move money, run ads, generate media, and automate it all from one CLI that's equally at home in your shell or an AI agent's toolbelt.

```bash
whop products list           # what you're selling
whop apps deploy             # ship a hosted app to *.whop.app
whop payouts create --help   # move money
whop --llms                  # machine-readable manifest for agents
```

## Installation

```bash
# macOS / Linux
curl -fsSL https://whop.com/install.sh | sh

# Homebrew
brew install whopio/tap/whop

# npm (requires Node.js >= 22)
npm install -g @whop/cli
```

Prebuilt binaries cover macOS and Linux ([releases](https://github.com/whopio/whop-public-cli/releases)); on other platforms, use npm. The standalone installer uses your standard user executable directory (`$XDG_BIN_HOME` or `~/.local/bin`) and updates your shell profile when needed — set `WHOP_INSTALL_NO_MODIFY_PATH=1` to skip that. Verify with `whop --version`.

## Getting started

```bash
whop login
```

That's it! It signs you in, then points you to `whop quickstart` to choose or create the business the CLI should use (run `quickstart` anytime to switch business).

## Usage

```bash
whop --help                  # all commands
whop plans create --help     # options for any command
```

Every command takes `--format json` for structured output (and `--format jsonl` to stream events).

In a terminal, commands missing required inputs prompt for them instead of failing — `whop swaps quote` with no flags asks for the amount and tokens. Agents and scripts (non-TTY) get a structured validation error instead, so nothing hangs on a prompt.

## Authentication

```bash
whop login --method oauth                           # interactive browser login
whop login --method oauth --format jsonl            # stream the authorization URL for an agent
whop login --method api-key --api-key whop_xxx      # explicit API-key login
WHOP_API_KEY=whop_xxx whop login --method api-key   # API key from the environment
```

If you manage more than one business, list them with `whop auth account --list` and switch the active one with `whop auth account <biz_id>` — no second browser round-trip needed.

The OAuth flow redirects to `localhost:13337`, so the browser must run on the same host as the CLI (or forward that port to the CLI host).

### Agent OAuth recipe

Run `whop login --method oauth --format jsonl` in the background with stdout redirected to a file (pipes like `| head` can buffer past the URL). The first line is an `authorization_required` event carrying an `authorizationUrl` — open it in the user's browser (`open <url>` / `xdg-open <url>`). It's several KB long (the full scope list); pass it programmatically without editing it, or it fails with `invalid_scope`. The final line is the saved-profile result; once the process exits, you're logged in.

## Build and deploy apps

Fully-hosted web apps (`*.whop.app`) follow a git-shaped lifecycle — two on-ramps, one loop:

```bash
# Start a NEW app: registers it, scaffolds the latest TanStack Start
# template (or --template app_xxx to clone another app's published source),
# wires it for Whop hosting, installs, and git-inits
whop apps init

# …or get an EXISTING app's deployed source onto this machine: downloads the
# production build's source archive (--build abld_xxx for any specific build)
# and three-way merges it with whatever is here via git
whop apps pull --app app_xxxxxxxx

# The loop
whop apps dev                     # local dev server, credentials auto-injected
whop apps deploy                  # build → typecheck → upload → promote to production
```

`deploy` ships the linked project; `--preview` uploads without promoting, and `whop apps builds promote <build_id>` ships it later — promoting an older build is also how you roll back.

Everything else is plain REST: `whop apps list|create|get|update`, `whop apps builds list|get|promote`, and `whop apps secrets list|set|unset` (encrypted at rest, injected into both the hosted runtime and `whop apps dev`).

After a deploy, read your app's server logs — every `console.log`, uncaught exception, and failed request, kept for 7 days:

```bash
whop apps logs app_xxxxxxxx --level error
whop apps logs app_xxxxxxxx --query "checkout"
```

The `whop()` Vite build plugin ships as `@whop/cli/vite`.

## Sell and get paid

```bash
whop products create --name "Pro membership"
whop plans create --help                            # one-time, recurring, trials, stock
whop checkout-configurations create --help          # shareable, prefilled checkout link
whop stats list                                     # financial, audience, and traffic reporting
```

Money moves through the same surface — payouts to a bank or wallet, transfers between accounts, deposits, swaps, and spending cards. Payouts and card issuing require a completed identity verification (`whop verifications`); any step that needs a browser (KYC, hosted deposit pages) is surfaced as a link to open.

## Run ads

Generate a creative, then create the campaign, ad group, and ad in one command — structured flags take JSON strings:

```bash
whop media generate --type image --prompt "A running club at sunrise" --wait
whop ads create \
  --title "Launch ad" --headlines "Find your stride" --call_to_action sign_up \
  --url "https://whop.com/your-store" \
  --creatives '[{"id":"file_x"}]' --social_accounts '[{"id":"sacc_x"}]' \
  --ad_group '{"title":"US broad","conversion_location":"website","ad_campaign":{"title":"Growth","platform":"meta","objective":"sales","status":"draft","budget_amount":25,"budget_optimization":"ad_campaign"}}'
whop ad-campaigns update <adcamp_id> --status active   # launch when ready
```

The installed `whop-ads` skill (`whop skills add`) carries the full playbook — billing setup, field rules, and monitoring.

## Upload files

Create a file record to receive the presigned upload URL and headers, then retrieve its status once the bytes are uploaded:

```bash
whop files create --filename "banner.png"
whop files get file_xxxxxxxxxxxxx
```

Upload the file's bytes to the returned `upload_url` using its `upload_headers`; `whop files get` returns the file URL once the upload is ready.

## For AI agents

The CLI is self-describing — agents can discover and drive every command:

```bash
whop --llms          # machine-readable manifest of all commands
whop mcp add         # register as an MCP server (e.g. Claude Desktop)
whop mcp doctor      # diagnose an MCP registration
whop skills add      # generate agent skills (per-resource playbooks)
```

For OAuth, follow the [agent recipe](#agent-oauth-recipe) above. For unattended automation, set `WHOP_API_KEY`.

## Invocation logs

Every run appends one JSON line — timestamp, arguments (secrets redacted), exit code, duration — to `~/.config/whop/logs/audit-YYYY-MM-DD.jsonl` so you can retrace what the CLI did when debugging. Logs older than 7 days are deleted automatically.

```bash
WHOP_CLI_AUDIT_RETENTION_DAYS=30 whop …   # keep logs longer
WHOP_CLI_AUDIT_LOG=0 whop …               # disable logging
```

## Updating

The CLI keeps itself up to date. To update manually, run `whop upgrade`.

## Documentation

- [Whop CLI docs](https://docs.whop.com/developer/cli)
- [Whop developer docs](https://docs.whop.com)
- Bugs and feature requests: [issues](https://github.com/whopio/whop-public-cli/issues)
