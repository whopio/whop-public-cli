---
name: whop-auth
description: Manage Whop authentication. Run `whop auth --help` for usage details.
requires_bin: whop
command: whop auth
---

# whop auth account

List your business accounts or set the default one for the active profile

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | no | Business account to make the default — id (biz_xxx) or route (interactive picker if omitted) |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--list` | `boolean` |  | List the business accounts you can manage without changing the default |

## Output

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `profile` | `string` | yes | The active profile |
| `account` | `unknown` | yes | The default business account passed to scoped commands |
| `accounts` | `array` | yes | Business accounts this user can manage |
| `accounts[].id` | `string` | yes |  |
| `accounts[].title` | `string` | yes |  |
| `accounts[].route` | `string` | yes |  |
| `accounts[].active` | `boolean` | yes | Whether this is the profile's default business account |

## Examples

```sh
# Pick the default business account interactively
whop auth account

# List the business accounts you can manage
whop auth account --list true

# Set the default business account
whop auth account biz_xxx
```

> OAuth profiles only — API key profiles are tied to a single business account.

---

# whop auth list

List saved authentication profiles

## Output

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `active` | `unknown` | yes |  |
| `profiles` | `array` | yes |  |
| `profiles[].name` | `string` | yes | The local profile name |
| `profiles[].method` | `string` | yes |  |
| `profiles[].accountId` | `string` | no |  |
| `profiles[].accountTitle` | `string` | no |  |
| `profiles[].accountRoute` | `string` | no |  |
| `profiles[].userId` | `string` | no |  |
| `profiles[].userEmail` | `string` | no |  |
| `profiles[].createdAt` | `string` | yes | ISO timestamp of when the profile was first created |

---

# whop auth login

Log in to Whop

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
whop auth login

# Open a browser for OAuth login
whop auth login --method oauth

# Non-interactive API-key login
whop auth login --method api-key --apiKey whop_xxx

# Log in and name the profile
whop auth login --method api-key --apiKey whop_xxx --profile prod
```

> Agents: run `login --method oauth --format jsonl` in the background with stdout redirected to a file (pipes like `| head` can buffer past the URL). The first line is an authorization_required event — open its authorizationUrl in the user's browser yourself (e.g. `open <url>` on macOS, `xdg-open` on Linux). The URL is several KB long, so pass it programmatically and NEVER retype, truncate, or summarize it: a mangled scope list fails with invalid_scope. Then wait for the process to exit; the final done event means the login saved. If the user manages multiple businesses the login still succeeds without one — set it afterwards with `auth account <biz_id>` (use `auth account --list` to enumerate). For unattended use, pass --api-key or set WHOP_API_KEY instead.

---

# whop auth logout

Log out — remove a saved profile, or all with --all

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--profile` | `string` |  | Profile to remove (defaults to the active profile) |
| `--all` | `boolean` |  | Remove every profile and its stored secret (full reset) |

## Output

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `removed` | `array` | yes | The removed profile name(s) |
| `newActive` | `unknown` | yes | The profile that is now active, if any |

## Examples

```sh
# Remove the active profile
whop auth logout

# Remove every profile (full reset)
whop auth logout --all true
```

---

# whop auth status

Show the active identity (whoami)

## Output

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `loggedIn` | `boolean` | yes | Whether the active profile has a usable stored credential |
| `profile` | `unknown` | yes |  |
| `method` | `unknown` | yes |  |
| `identity` | `unknown` | yes | The logged-in user (OAuth) or the account (API key) |
| `account` | `unknown` | yes | The account auto-filled for scoped commands (account_id/company_id) |
| `hasSecret` | `boolean` | yes | Whether a secret was found in the OS keychain for this profile |

---

# whop auth switch

Switch the active profile

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `name` | `string` | no | Profile to switch to (interactive picker if omitted) |

## Output

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `active` | `string` | yes | The newly active profile |
