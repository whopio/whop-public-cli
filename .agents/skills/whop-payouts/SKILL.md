---
name: whop-payouts
description: Send money from a balance to a bank or wallet. Run `whop payouts --help` for usage details.
requires_bin: whop
command: whop payouts
---

# whop payouts create

Create Payout

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | The account to pay out from (a biz_ identifier). |
| `--amount` | `number` |  | The amount to pay out in the specified currency. |
| `--currency` | `string` |  |  |
| `--payout_method_id` | `string` |  | The saved payout method to deliver to (a potk_ identifier). |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop payouts create-method

Create Payout Method

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  |  |
| `--destination_currency` | `string` | `usd` |  |
| `--destination_id` | `string` |  | The payout destination to add (a pd_ identifier from a previous listing). |
| `--fields` | `object` |  | The destination's required field values, keyed by field id. |
| `--is_default` | `boolean` | `false` |  |
| `--nickname` | `string` |  | A label for the payout method, unique per destination. |
| `--user_id` | `string` |  |  |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop payouts list

List Payouts

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | The owning account ID (a biz_ identifier). Provide this or user_id. |
| `--user_id` | `string` |  | The owning user ID (a user_ identifier). Provide this or account_id. |
| `--currency` | `string` |  | Optional currency code filter, for example `usd`. |
| `--first` | `number` | `20` | Number of payouts to return from the start of the window. |
| `--after` | `string` |  | Cursor to fetch the page after (from page_info.end_cursor). |
| `--last` | `number` |  | Number of payouts to return from the end of the window. |
| `--before` | `string` |  | Cursor to fetch the page before (from page_info.start_cursor). |

---

# whop payouts methods

List Payout Methods

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | The owning account ID (a biz_ identifier). Provide this or user_id. |
| `--user_id` | `string` |  | The owning user ID (a user_ identifier). Provide this or account_id. |
| `--status` | `string` |  | Optional status filter. `created` means saved but unused, `active` means a payout through it succeeded, `broken` means the last payout failed and the method needs fixing. |
| `--amount` | `number` |  | Optional withdrawal amount in whole currency units, for example `250.00`. When provided, each method includes a quote with the estimated fee, amount received, and delivery date for that amount. |
| `--currency` | `string` | `usd` | Currency code of the amount, for example `usd`. Only meaningful with amount. |
| `--include_available` | `boolean` | `false` | When true, the response also carries available_destinations — payout rails the account could add as a new payout method, with per-currency quotes when an amount is provided. |
| `--destination_id` | `string` |  | Narrows available_destinations to this one destination (a pd_ identifier from a previous listing) and includes its required_fields — the values to collect to add it as a payout method. Implies include_available. |
| `--destination_currency` | `string` | `usd` | Currency the destination would deliver payouts in. Only meaningful with destination_id; required fields vary by destination currency. |
| `--first` | `number` | `20` | Number of payout methods to return from the start of the window. |
| `--after` | `string` |  | Cursor to fetch the page after (from page_info.end_cursor). |
| `--last` | `number` |  | Number of payout methods to return from the end of the window. |
| `--before` | `string` |  | Cursor to fetch the page before (from page_info.start_cursor). |
