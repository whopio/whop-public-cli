---
name: whop-plans
description: "Pricing for a product: one-time, recurring, trials, stock. Run `whop plans --help` for usage details."
requires_bin: whop
command: whop plans
---

# whop plans calculate_tax

Calculate Tax

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | Plan ID, prefixed `plan_`. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--address` | `unknown` |  |  |
| `--ip_address` | `string` |  |  |
| `--tax_ids` | `unknown` |  |  |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop plans create

Create Plan

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  |  |
| `--adaptive_pricing_enabled` | `boolean` |  |  |
| `--billing_period` | `number` |  |  |
| `--checkout_styling` | `unknown` |  |  |
| `--currency` | `string` |  |  |
| `--custom_fields` | `unknown` |  |  |
| `--description` | `unknown` |  |  |
| `--expiration_days` | `number` |  |  |
| `--image` | `unknown` |  |  |
| `--initial_price` | `number` |  |  |
| `--internal_notes` | `unknown` |  |  |
| `--legacy_payment_method_controls` | `boolean` |  |  |
| `--metadata` | `unknown` |  |  |
| `--override_tax_type` | `string` |  |  |
| `--payment_method_configuration` | `unknown` |  |  |
| `--plan_type` | `string` |  |  |
| `--product_id` | `string` |  |  |
| `--release_method` | `string` |  |  |
| `--renewal_price` | `number` |  |  |
| `--split_pay_required_payments` | `number` |  |  |
| `--stock` | `number` |  |  |
| `--three_ds_level` | `string` |  |  |
| `--title` | `unknown` |  |  |
| `--trial_period_days` | `number` |  |  |
| `--unlimited_stock` | `boolean` |  |  |
| `--visibility` | `string` |  |  |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop plans delete

Delete Plan

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | Plan ID, prefixed `plan_`. |

> Confirm with the user before executing this destructive command.

---

# whop plans get

Retrieve Plan

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | Plan ID, prefixed `plan_`. |

---

# whop plans list

List Plans

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | The unique identifier of the account to list plans for. |
| `--direction` | `string` |  | The sort direction for results. Defaults to descending. |
| `--order` | `string` |  | The field to sort results by. Defaults to created_at. |
| `--release_methods` | `array` |  | Filter to only plans matching these release methods. |
| `--visibilities` | `array` |  | Filter to only plans matching these visibility states. |
| `--plan_types` | `array` |  | Filter to only plans matching these billing types. |
| `--product_ids` | `array` |  | Filter to only plans belonging to these product identifiers. |
| `--created_before` | `string` |  | Only return plans created before this timestamp. |
| `--created_after` | `string` |  | Only return plans created after this timestamp. |
| `--first` | `number` |  | The number of plans to return (default and max 100). |
| `--after` | `string` |  | A cursor; returns plans after this position. |
| `--last` | `number` |  | The number of plans to return from the end of the range. |
| `--before` | `string` |  | A cursor; returns plans before this position. |

---

# whop plans update

Update Plan

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | Plan ID, prefixed `plan_`. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--adaptive_pricing_enabled` | `boolean` |  |  |
| `--billing_period` | `number` |  |  |
| `--checkout_styling` | `unknown` |  |  |
| `--currency` | `string` |  |  |
| `--custom_fields` | `unknown` |  |  |
| `--description` | `unknown` |  |  |
| `--expiration_days` | `number` |  |  |
| `--image` | `unknown` |  |  |
| `--initial_price` | `number` |  |  |
| `--internal_notes` | `unknown` |  |  |
| `--legacy_payment_method_controls` | `boolean` |  |  |
| `--metadata` | `unknown` |  |  |
| `--offer_cancel_discount` | `boolean` |  |  |
| `--override_tax_type` | `string` |  |  |
| `--payment_method_configuration` | `unknown` |  |  |
| `--renewal_price` | `number` |  |  |
| `--stock` | `number` |  |  |
| `--strike_through_initial_price` | `number` |  |  |
| `--strike_through_renewal_price` | `number` |  |  |
| `--three_ds_level` | `string` |  |  |
| `--title` | `unknown` |  |  |
| `--trial_period_days` | `number` |  |  |
| `--unlimited_stock` | `boolean` |  |  |
| `--visibility` | `string` |  |  |

> Confirm with the user before executing this destructive command.
