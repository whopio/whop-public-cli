---
name: whop-swaps
description: Convert a balance between currencies. Run `whop swaps --help` for usage details.
requires_bin: whop
command: whop swaps
---

# whop swaps create

Create Swap

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | Business or user account ID (biz_* / user_*). |
| `--amount` | `string` |  | Source token amount. |
| `--from_chain` | `number` |  |  |
| `--from_token` | `string` |  | Source token contract address or ticker symbol, such as "USDT". |
| `--slippage_bps` | `number` |  |  |
| `--to_chain` | `number` |  |  |
| `--to_token` | `string` |  | Destination token contract address or ticker symbol, such as "XAUT". |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop swaps get

Retrieve Swap

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | Swap ID returned from POST /swaps. |

---

# whop swaps quote

Create Swap Quote

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--amount` | `string` |  | Source token amount. |
| `--from_address` | `unknown` |  |  |
| `--from_chain` | `number` |  |  |
| `--from_token` | `string` |  | Source token contract address or ticker symbol, such as "USDT". |
| `--metadata` | `object` |  |  |
| `--slippage_bps` | `number` |  |  |
| `--to_address` | `unknown` |  |  |
| `--to_chain` | `number` |  |  |
| `--to_token` | `string` |  | Destination token contract address or ticker symbol, such as "XAUT". |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop swaps status

List Swaps

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | Business or user account ID (biz_* / user_*). |
