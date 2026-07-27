---
name: whop-transfers
description: Move funds between Whop accounts and users. Run `whop transfers --help` for usage details.
requires_bin: whop
command: whop transfers
---

# whop transfers create

Create Transfer

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--amount` | `number` |  | The amount to move, in the transfer currency. For example 25.00. |
| `--currency` | `string` |  |  |
| `--destination_id` | `string` |  |  |
| `--expires_at` | `unknown` |  |  |
| `--idempotence_key` | `unknown` |  |  |
| `--metadata` | `unknown` |  |  |
| `--notes` | `unknown` |  |  |
| `--origin_id` | `string` |  | The account sending the funds. A user ID (user_xxx), account ID (biz_xxx), or ledger account ID (ldgr_xxx). |
| `--redeemable_count` | `number` |  | claim_link only. How many different users can claim the link. Defaults to 1. |
| `--type` | `string` |  |  |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop transfers get

Retrieve Transfer

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The transfer ID. |

---

# whop transfers list

List Transfers

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--origin_id` | `string` |  | Filter to transfers sent from this account. |
| `--destination_id` | `string` |  | Filter to transfers received by this account. |
| `--order` | `string` |  | Sort column. Defaults to created_at. |
| `--direction` | `string` |  | Sort direction. Defaults to desc. |
| `--created_before` | `string` |  | Only transfers created strictly before this ISO 8601 timestamp. |
| `--created_after` | `string` |  | Only transfers created strictly after this ISO 8601 timestamp. |
| `--first` | `number` | `50` | Number of transfers to return from the start of the window. |
| `--after` | `string` |  | Cursor to fetch the page after (from page_info.end_cursor). |
| `--last` | `number` |  | Number of transfers to return from the end of the window. |
| `--before` | `string` |  | Cursor to fetch the page before (from page_info.start_cursor). |
