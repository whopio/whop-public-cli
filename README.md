# Whop CLI

`whop` is your entire business on the command line. Ship software, sell products, move money, buy ads, hire people, and read the numbers.

```bash
whop accounts create --title "Acme"                       # create a business
whop apps deploy                                          # ship a web app to *.whop.site
whop products create --title "Pro membership"             # something to sell
whop checkout-configurations create --plan_id plan_xxx    # a link that accepts money
whop media generate --type image --prompt "launch art"    # make an ad creative
whop ads create …                                         # put it on Meta/Tiktok
whop payouts create …                                     # send earnings to your bank
whop stats list                                           # how it's all going
```

With the CLI you can:

- **Ship software**: build and deploy hosted web apps to `*.whop.site`, with previews, rollbacks, secrets, and production logs
- **Sell anything**: products, one-time / recurring / trial pricing, checkout links
- **Move money**: payouts, transfers, deposits, currency swaps, spending cards
- **Advertise**: generate AI images and video, run Meta or Tiktok campaigns
- **Hire**: post bounties with escrowed rewards, review submissions, pay the winners
- **Measure**: financial, audience, and traffic stats, plus tracked people and events
- **Automate all of it**: structured output, a machine-readable manifest, an MCP server, and agent skills built in



## Installation

```bash
# macOS / Linux
curl -fsSL https://whop.com/install.sh | sh

# Homebrew
brew install whopio/tap/whop

# npm (requires Node.js >= 22)
npm install -g @whop/cli
```

Prebuilt binaries cover macOS and Linux ([releases](https://github.com/whopio/whop-public-cli/releases)); on other platforms, use npm. The standalone installer uses your standard user executable directory (`$XDG_BIN_HOME` or `~/.local/bin`).

## Getting started

```bash
whop
```

That's it! Run `whop auth accounts` anytime to switch businesses.

## Usage

```bash
whop --help                  # all commands
whop products list           # what you're selling
whop plans create --help     # options for any command
whop stats list              # your numbers
whop accounts get jordan                # retrieve a business by route
```

Every command takes `--format json` for structured output, or `--format jsonl` to stream events.

Commands that act on one account take the business's `biz_` ID or public route positionally. Account-scoped commands use the selected business by default; pass `--account_id` to choose a different scope. Account preferences and reserves remain account-scoped.

In a terminal, commands prompt for missing inputs. Agents and scripts (non-TTY) get a structured validation error instead, so nothing hangs.

## Feedback and questions

```bash
whop report-feedback --content "The error message does not explain which permission is missing."
whop ask-question --content "How do trials interact with an existing subscription?" --format json
```

Both commands submit one observation for Whop's internal review and return a receipt. `ask-question` records an unanswered question; it does not return an answer or start a support conversation. Use a user credential from `whop login` (browser OAuth). Remove secrets, personal data, and payment details from `--content`.

Use `--account_id biz_...` to identify the account for an affected resource. Both commands default to your active account when available. Account context is optional.

## Ship apps

Hosted web apps (`*.whop.site`) follow a git-shaped lifecycle. Two on-ramps, one loop:

```bash
whop apps init                    # start a NEW app: registers, scaffolds, git-inits
whop apps pull --app app_xxx      # or pull an EXISTING app's deployed source

# The loop
whop apps dev                     # local dev server, credentials auto-injected
whop apps deploy                  # build, typecheck, upload, promote to production
```

`deploy --preview` uploads without promoting. `whop apps builds promote <build_id>` ships a build later, and promoting an older build rolls back. `pull` merges the deployed source with your local files via git, so conflicts show up as normal git conflict markers.

The rest is plain REST: `whop apps list|create|get|update|delete`, `whop apps builds list|get|promote`, `whop apps secrets list|set|unset`. The `whop()` Vite build plugin ships as `@whop/cli/vite`.

App secrets are encrypted at rest and injected into the hosted runtime. `whop apps dev` also injects them locally, except names that control the local runtime.

Manage them with:

```bash
whop apps secrets list
whop apps secrets set --secret MAIL_API_KEY=mail-key-123
whop apps secrets unset --key MAIL_API_KEY
```

Run these inside a linked project or pass `--app app_xxxxxxxx`. App secrets are runtime configuration; they are separate from the app API key exposed as `WHOP_API_KEY` in the dashboard.

After a deploy, read your app's server logs (kept for 7 days):

```bash
whop apps logs app_xxxxxxxx --level error
whop apps logs app_xxxxxxxx --query "checkout"
```

App logs cover the hosted server runtime. Use your browser's developer console for client-side JavaScript errors.

## Sell and get paid

```bash
whop products create --title "Pro membership"
whop plans create --help                            # one-time, recurring, trials, stock
whop checkout-configurations create --help          # shareable, prefilled checkout link
whop stats list                                     # financial, audience, and traffic reporting
```

Set product gallery images or videos with uploaded file IDs:

```bash
whop products update prod_xxxxxxxx --gallery_images '[{"id":"file_xxxxxxxx"}]'
```

`products create` accepts the same option. The array replaces the gallery in display order; include every file you want to keep. Pass `'[]'` to clear it. `banner_image` is separate and does not satisfy the marketplace gallery requirement.

Money moves through the same surface: payouts, transfers, deposits, swaps, and cards. Payouts and card issuing require identity verification (`whop verifications`). Steps that need a browser, like KYC, show up as a link to open.

## Serve the customers you have

```bash
whop members list --access_level customer         # one row per buyer
whop memberships cancel mem_xxx --reason "moved"  # also pause, resume, extend
whop shipments create --payment_id pay_xxx --tracking_number 1Z999
whop disputes list                                # chargebacks, with evidence and outcomes
whop resolution-center-cases reply reso_xxx --help # answer a case before it escalates
```

## Export and notify

```bash
whop exports create --resource receipts     # then poll until download_url is set
whop exports get exprt_xxx
whop notifications create --experience_id exp_xxx --title "New drop" --content "Live now"
```

## Run ads

Generate a creative, then create the campaign, ad group, and ad in one command. Structured flags take JSON strings:

```bash
whop media generate --type image --prompt "A running club at sunrise" --wait
whop ads create \
  --title "Launch ad" --headlines "Find your stride" --call_to_action sign_up \
  --url "https://whop.com/your-store" \
  --creatives '[{"id":"file_x"}]' --social_accounts '[{"id":"sacc_x"}]' \
  --ad_group '{"title":"US broad","conversion_location":"website","ad_campaign":{"title":"Growth","platform":"meta","objective":"sales","status":"draft","budget_amount":25,"budget_optimization":"ad_campaign"}}'
whop ad-campaigns update <adcamp_id> --status active   # launch when ready
```

The `whop` skill (`whop skills add`) carries the launch playbook in `references/ads.md`.

## Run experiments

Use `whop experiments` to list, create, get, update, evaluate exposures, activate, pause, or end account experiments. Account experiments do not accept or require tags. Creating one currently requires Whop internal access.

```bash
whop experiments list --account_id biz_xxx
whop experiments create --help
```

## Hire a workforce

```bash
whop bounties create --help              # paid tasks with escrowed rewards
whop bounty-submissions list --help      # review submitted work, approve to pay
```



## Upload files

```bash
whop files create --filename "banner.png"
whop files get file_xxxxxxxxxxxxx
```

`create` returns a presigned `upload_url` and `upload_headers`. Upload the bytes there, then `get` returns the file URL once it's ready. `list` shows your uploads, and `complete` finishes a multipart upload once every part is in.

## For AI agents

The CLI is self-describing. Agents can discover and drive every command:

```bash
whop --llms          # machine-readable manifest of all commands
whop mcp add         # automatically register with supported coding agents
whop mcp doctor      # diagnose an MCP registration
whop skills add      # install the Whop agent skill
```

For OAuth, run `whop login --method oauth --format jsonl` in the background with stdout redirected to a file (pipes like `| head` can buffer past the URL). The first line carries an `authorizationUrl`; open it in the user's browser, unedited. Once the process exits, you're logged in.

For unattended automation, set `WHOP_API_KEY` (create one under **Developer → API keys**). For API commands, it takes precedence over any saved CLI profile for that invocation.

## Authentication

```bash
whop login --method oauth                           # interactive browser login
whop login --method oauth --format jsonl            # stream the authorization URL for an agent
whop login --method api-key --api-key whop_xxx      # explicit API-key login
WHOP_API_KEY=whop_xxx whop login --method api-key   # API key from the environment
```

List your businesses with `whop auth account --list` and switch with `whop auth account <biz_id>`.

`whop api-keys permissions` lists the permissions that can be assigned to API keys. Creating, listing, updating, rotating, and revoking keys requires a first-party dashboard session, so those operations are not exposed by the CLI. Manage keys in the [Whop dashboard](https://whop.com/dashboard).

The OAuth flow redirects to `localhost:13337`, so the browser must run on the same host as the CLI (or forward that port).

## Invocation logs

Every run appends one JSON line (arguments with secrets redacted, exit code, duration) to `~/.config/whop/logs/audit-YYYY-MM-DD.jsonl`. Logs older than 7 days are deleted.

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
