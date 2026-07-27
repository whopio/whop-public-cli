---
name: whop-cards
description: Issue cards that spend from a balance. Run `whop cards --help` for usage details.
requires_bin: whop
command: whop cards
---

# whop cards create

Create Card

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  |  |
| `--assigned_user_id` | `string` |  |  |
| `--name` | `string` |  |  |
| `--spend_limit` | `number` |  | Spending limit amount, in dollars. |
| `--spend_limit_frequency` | `string` |  |  |
| `--transaction_limit` | `number` |  | Per-transaction limit amount, in dollars. |
| `--user_id` | `string` |  |  |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop cards get

Retrieve Card

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `card_id` | `string` | yes | Card ID to retrieve, prefixed `icrd_`. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | The owning account ID (a biz_ identifier). Provide this or user_id. |
| `--user_id` | `string` |  | The owning user ID (a user_ identifier). Provide this or account_id. |

---

# whop cards list

List Cards

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | The owning account ID (a biz_ identifier). Provide this or user_id. |
| `--user_id` | `string` |  | The owning user ID (a user_ identifier). Provide this or account_id. |

---

# whop cards update

Update Card

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `card_id` | `string` | yes | Card ID to retrieve, prefixed `icrd_`. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  |  |
| `--billing` | `object` |  |  |
| `--canceled` | `boolean` |  | Pass `true` to permanently cancel the card. A canceled card cannot be uncanceled. Cannot be combined with other fields. |
| `--frozen` | `boolean` |  | Pass `true` to freeze the card, `false` to unfreeze it. |
| `--name` | `string` |  |  |
| `--pin` | `string` |  |  |
| `--remove_limit` | `boolean` |  | Pass `true` to remove the spending limit (make the card unlimited). |
| `--spend_limit` | `number` |  | Spending limit amount, in dollars. |
| `--spend_limit_frequency` | `string` |  |  |
| `--transaction_limit` | `number` |  | Per-transaction limit amount, in dollars. |
| `--user_id` | `string` |  |  |

> Confirm with the user before executing this destructive command.
