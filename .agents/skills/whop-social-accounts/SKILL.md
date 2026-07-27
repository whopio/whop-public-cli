---
name: whop-social-accounts
description: Connected Facebook and Instagram accounts that run ads. Run `whop social-accounts --help` for usage details.
requires_bin: whop
command: whop social-accounts
---

# whop social-accounts connect

Connect a Social Account

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  |  |
| `--platform` | `string` |  |  |
| `--redirect_url` | `string` |  |  |
| `--scopes` | `array` |  |  |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop social-accounts create

Create a Social Account

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  |  |
| `--platform` | `string` |  |  |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop social-accounts delete

Delete a Social Account

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The ID of the social account to disconnect. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | The Account that the social account is connected to. Provide either this or user_id. |
| `--user_id` | `string` |  | The User that the social account is connected to. Provide either this or account_id. |

> Confirm with the user before executing this destructive command.

---

# whop social-accounts lead_forms

List Social Account Lead Forms

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The social account (a sacc_ identifier) whose lead forms to list. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | The Account (a biz_ identifier) the social account is connected to. |

---

# whop social-accounts list

List Social Accounts

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | The Account that the social accounts are connected to. Provide either this or user_id. |
| `--user_id` | `string` |  | The User that the social accounts are connected to. Provide either this or account_id. |
| `--platform` | `string` |  | Only return social accounts for the platform that is specified. |
| `--verified` | `boolean` |  | Only return social accounts that are verified on the platform. |
| `--scopes` | `array` |  | Only return social accounts that have these scopes. |
| `--first` | `number` | `20` | The number of social accounts to return. |
| `--after` | `string` |  | Cursor to fetch the page after (from page_info.end_cursor). |
| `--last` | `number` |  | The number of social accounts to return from the end of the range. |
| `--before` | `string` |  | Cursor to fetch the page before (from page_info.start_cursor). |
| `--order` | `string` |  | The field to sort social accounts by. |
| `--direction` | `string` |  | Sort direction. |

---

# whop social-accounts posts

List Social Account Posts

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The social account (a sacc_ identifier) whose posts to list. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | The Account (a biz_ identifier) the social account is connected to. |
| `--post_id` | `string` |  | Return only the single post with this platform id, instead of the full list. |
| `--first` | `number` | `20` | The number of posts to return. |
| `--after` | `string` |  | Cursor to fetch the page after (from page_info.end_cursor). |
