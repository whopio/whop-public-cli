---
name: whop-products
description: The things you sell. Each owns plans and a store page. Run `whop products --help` for usage details.
requires_bin: whop
command: whop products
---

# whop products create

Create Product

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  |  |
| `--collect_shipping_address` | `boolean` |  |  |
| `--custom_cta` | `unknown` |  |  |
| `--custom_cta_url` | `unknown` |  |  |
| `--custom_statement_descriptor` | `unknown` |  |  |
| `--description` | `unknown` |  |  |
| `--global_affiliate_percentage` | `number` |  |  |
| `--global_affiliate_status` | `string` |  |  |
| `--headline` | `unknown` |  |  |
| `--member_affiliate_percentage` | `number` |  |  |
| `--member_affiliate_status` | `string` |  |  |
| `--metadata` | `unknown` |  |  |
| `--product_tax_code_id` | `unknown` |  |  |
| `--redirect_purchase_url` | `unknown` |  |  |
| `--route` | `unknown` |  |  |
| `--send_welcome_message` | `boolean` |  |  |
| `--title` | `string` |  | The display name of the product. Maximum 80 characters. |
| `--visibility` | `string` |  |  |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop products delete

Delete Product

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The unique identifier of the product. |

> Confirm with the user before executing this destructive command.

---

# whop products get

Retrieve Product

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The unique identifier of the product. |

---

# whop products list

List Products

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | The unique identifier of the account to list products for. |
| `--visibilities` | `array` |  | Filter to only products matching these visibility states. |
| `--access_pass_types` | `array` |  | Filter to only products matching these types. |
| `--direction` | `string` |  | The sort direction for results. Defaults to descending. |
| `--order` | `string` |  | The field to sort results by. Defaults to created_at. |
| `--first` | `number` |  | The number of products to return (default and max 100). |
| `--after` | `string` |  | A cursor; returns products after this position. |
| `--last` | `number` |  | The number of products to return from the end of the range. |
| `--before` | `string` |  | A cursor; returns products before this position. |

---

# whop products update

Update Product

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The unique identifier of the product. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--description` | `unknown` |  |  |
| `--headline` | `unknown` |  |  |
| `--metadata` | `unknown` |  |  |
| `--product_tax_code_id` | `unknown` |  |  |
| `--send_welcome_message` | `boolean` |  |  |
| `--title` | `string` |  |  |
| `--visibility` | `string` |  |  |

> Confirm with the user before executing this destructive command.
