---
name: whop-bounties
description: Paid tasks with reviewed submissions and escrowed rewards. Run `whop bounties --help` for usage details.
requires_bin: whop
command: whop bounties
---

# whop bounties cancel

Cancel

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | Bounty ID (`bnty_` tag). |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop bounties create

Create Bounty

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--accepted_submissions_limit` | `number` |  |  |
| `--account_id` | `unknown` |  |  |
| `--allowed_country_codes` | `unknown` |  |  |
| `--business_goal_type` | `string` |  |  |
| `--capture_spec` | `object` |  |  |
| `--description` | `string` |  | Full task instructions shown to workers. |
| `--experience_id` | `unknown` |  |  |
| `--frequency` | `string` |  |  |
| `--gross_reward_amount` | `number` |  | Gross bounty-pool amount (USD) escrowed per accepted submission, in whole dollars. Platform fees and affiliate shares are paid from this amount. |
| `--publish_at` | `unknown` |  |  |
| `--publish_at_timezone` | `unknown` |  |  |
| `--title` | `string` |  | Short name of the task shown to workers. |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop bounties get

Retrieve Bounty

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | Bounty ID (`bnty_` tag). |

---

# whop bounties list

List Bounties

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | Scope the list to this account (`biz_` tag). Requires read access to the account; account API keys may pass their own account or a connected account. |
| `--user_id` | `string` |  | List the bounties this user participated in (`user_` tag). Must be the authenticated user. |
| `--status` | `string` |  | Filter by lifecycle state. |
| `--query` | `string` |  | Substring match on the bounty title or ID. |
| `--created_after` | `string` |  | Only bounties created after this ISO 8601 timestamp. |
| `--created_before` | `string` |  | Only bounties created before this ISO 8601 timestamp. |
| `--order` | `string` |  | Sort field. |
| `--direction` | `string` |  | Sort direction. |
| `--first` | `number` | `20` | Number of bounties to return from the start of the window. |
| `--after` | `string` |  | Cursor to paginate forwards from. |
| `--last` | `number` |  | Number of bounties to return from the end of the window. |
| `--before` | `string` |  | Cursor to paginate backwards from. |

---

# whop bounties update

Update Bounty

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | Bounty ID (`bnty_` tag). |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--accepted_submissions_limit` | `number` |  |  |
| `--allowed_country_codes` | `unknown` |  |  |
| `--business_goal_type` | `string` |  |  |
| `--description` | `string` |  |  |
| `--frequency` | `string` |  |  |
| `--gross_reward_amount` | `number` |  |  |
| `--publish_at` | `unknown` |  |  |
| `--publish_at_timezone` | `unknown` |  |  |
| `--title` | `string` |  |  |

> Confirm with the user before executing this destructive command.
