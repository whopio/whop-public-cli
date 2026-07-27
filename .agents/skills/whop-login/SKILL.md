---
name: whop-login
description: Log in to Whop (alias for `auth login`). Run `whop login --help` for usage details.
requires_bin: whop
command: whop login
---

# whop login

Log in to Whop (alias for `auth login`)

## Environment Variables

| Name | Type | Required | Default | Description |
|------|------|----------|---------|-------------|
| `WHOP_API_KEY` | `string` | no |  | API key for non-interactive login |
| `WHOP_API_BASE_URL` | `string` | no |  | Override the Whop API base URL |
| `WHOP_CONFIG_DIR` | `string` | no |  | Override the CLI config directory |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--method` | `string` |  | Authentication method to use |
| `--apiKey` | `string` |  | API key for non-interactive login (skips the prompt) |
| `--profile` | `string` |  | Name for this profile (defaults to the account route) |
| `--accountId` | `string` |  | Business account to act on behalf of (biz_xxx) — for OAuth users who manage more than one |

## Output

Type: `unknown`

## Examples

```sh
# Interactive login
whop login

# Open a browser for OAuth login
whop login --method oauth

# Non-interactive API-key login
whop login --method api-key --apiKey whop_xxx

# Log in and name the profile
whop login --method api-key --apiKey whop_xxx --profile prod
```

> Agents: run `login --method oauth --format jsonl` in the background with stdout redirected to a file (pipes like `| head` can buffer past the URL). The first line is an authorization_required event — open its authorizationUrl in the user's browser yourself (e.g. `open <url>` on macOS, `xdg-open` on Linux). The URL is several KB long, so pass it programmatically and NEVER retype, truncate, or summarize it: a mangled scope list fails with invalid_scope. Then wait for the process to exit; the final done event means the login saved. If the user manages multiple businesses the login still succeeds without one — set it afterwards with `auth account <biz_id>` (use `auth account --list` to enumerate). For unattended use, pass --api-key or set WHOP_API_KEY instead.
