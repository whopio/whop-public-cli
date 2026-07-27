---
name: whop-checkout-configurations
description: Turn a plan into a shareable, prefilled checkout link. Run `whop checkout-configurations --help` for usage details.
requires_bin: whop
command: whop checkout-configurations
---

# whop checkout-configurations create

Create a checkout configuration

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  |  |
| `--affiliate_code` | `unknown` |  |  |
| `--currency` | `unknown` |  |  |
| `--metadata` | `unknown` |  |  |
| `--mode` | `string` |  |  |
| `--payment_method_configuration` | `unknown` |  |  |
| `--plan` | `unknown` |  |  |
| `--plan_id` | `unknown` |  |  |
| `--redirect_url` | `unknown` |  |  |
| `--three_ds_level` | `unknown` |  |  |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop checkout-configurations delete

Delete a checkout configuration

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The ID of the checkout configuration. |

> Confirm with the user before executing this destructive command.

---

# whop checkout-configurations get

Retrieve a checkout configuration

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The ID of the checkout configuration. |

---

# whop checkout-configurations list

List checkout configurations

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | Account ID, prefixed `biz_`. |
| `--plan_id` | `string` |  | Only return checkout configurations for this plan ID, prefixed `plan_`. |
| `--created_before` | `string` |  | Only return checkout configurations created before this ISO 8601 timestamp. |
| `--created_after` | `string` |  | Only return checkout configurations created after this ISO 8601 timestamp. |
| `--order` | `string` |  | Field used to sort checkout configurations. |
| `--direction` | `string` |  | Sort direction. Defaults to `desc`. |
| `--first` | `number` |  | Number of checkout configurations to return. |
| `--after` | `string` |  | Cursor for the next page of results. |
