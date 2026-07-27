---
name: whop-verifications
description: Legal identity required before payouts and card issuing. Run `whop verifications --help` for usage details.
requires_bin: whop
command: whop verifications
---

# whop verifications create

Create Verification

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | Account or user ID whose identity you want to verify. Use a `biz_` account ID for account verifications, or the caller's `user_` ID for personal verification. |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop verifications get

Retrieve Verification

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `verification_id` | `string` | yes | Verification profile ID, prefixed `idpf_`. |

---

# whop verifications list

List Verifications

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | Account or user ID whose verifications you want to list. Use a `biz_` account ID, or the caller's `user_` ID for personal verifications. |
| `--order` | `string` |  | Field used to sort returned verifications. |
| `--direction` | `string` |  | Sort direction for returned verifications. |

---

# whop verifications update

Update Verification

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `verification_id` | `string` | yes | Verification profile ID, prefixed `idpf_`. |

> Confirm with the user before executing this destructive command.
