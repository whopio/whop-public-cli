---
name: whop-deposits
description: Add funds to a balance. Run `whop deposits --help` for usage details.
requires_bin: whop
command: whop deposits
---

# whop deposits create

Create Deposit

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--amount` | `number` |  | Amount to prefill on hosted deposit page. |
| `--destination` | `unknown` |  |  |
| `--metadata` | `object` |  |  |
| `--network` | `unknown` |  |  |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.
