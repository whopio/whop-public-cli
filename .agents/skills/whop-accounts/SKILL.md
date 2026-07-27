---
name: whop-accounts
description: "A business on Whop: profile, wallet, capabilities, settings. Run `whop accounts --help` for usage details."
requires_bin: whop
command: whop accounts
---

# whop accounts create

Create Account

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--country` | `string` |  |  |
| `--email` | `string` |  |  |
| `--metadata` | `object` |  |  |
| `--title` | `string` |  |  |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop accounts get

Retrieve Account

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | Account ID, prefixed `biz_`. |

---

# whop accounts list

List Accounts

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--first` | `number` |  | The number of accounts to return (default 10, max 50). |
| `--after` | `string` |  | A cursor; returns accounts after this position. |
| `--last` | `number` |  | The number of accounts to return from the end of the range. |
| `--before` | `string` |  | A cursor; returns accounts before this position. |
| `--order` | `string` |  | The field to sort accounts by. |
| `--direction` | `string` |  | Sort direction. |

---

# whop accounts llc

Register LLC

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | Account ID, prefixed `biz_`. |
| `--business_info` | `object` |  | The company to form. |
| `--founders` | `array` |  | The company's founders. Exactly one must be marked `is_primary` — the responsible party for the filing. |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop accounts me

Retrieve Requesting Account

---

# whop accounts preferences

Retrieve Account Preferences

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | Account ID, prefixed `biz_`. |

---

# whop accounts recommend_actions

List Recommended Actions

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | Account ID, prefixed `biz_`. |

---

# whop accounts update

Update Account

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | Account ID, prefixed `biz_`. |
| `--affiliate_application_required` | `boolean` |  | Whether prospective affiliates must submit an application before promoting this account. |
| `--affiliate_instructions` | `unknown` |  |  |
| `--banner_image` | `unknown` |  |  |
| `--business_address` | `object` |  |  |
| `--business_type` | `unknown` |  |  |
| `--collect_vat_id` | `boolean` |  | Whether checkout shows a VAT/tax ID field for buyers to optionally enter. Does not require a VAT ID to purchase. |
| `--country` | `unknown` |  |  |
| `--description` | `unknown` |  |  |
| `--featured_affiliate_product_id` | `unknown` |  |  |
| `--home_preferences` | `array` |  |  |
| `--industry_group` | `unknown` |  |  |
| `--industry_type` | `unknown` |  |  |
| `--invoice_prefix` | `unknown` |  |  |
| `--logo` | `unknown` |  |  |
| `--metadata` | `object` |  |  |
| `--onboarding_type` | `unknown` |  |  |
| `--opengraph_image` | `unknown` |  |  |
| `--opengraph_image_variant` | `unknown` |  |  |
| `--other_business_description` | `unknown` |  |  |
| `--other_industry_description` | `unknown` |  |  |
| `--product_tax_code_id` | `unknown` |  |  |
| `--require_2fa` | `boolean` |  | Whether the account requires authorized users to have two-factor authentication enabled. |
| `--route` | `unknown` |  |  |
| `--send_customer_emails` | `boolean` |  | Whether Whop sends transactional emails to customers on behalf of this account. |
| `--show_joined_whops` | `boolean` |  | Whether the account appears in joined whops on other accounts. |
| `--show_reviews_dtc` | `boolean` |  | Whether reviews are displayed on direct-to-consumer product pages. |
| `--show_user_directory` | `boolean` |  | Whether the account shows users in the user directory. |
| `--social_links` | `array` |  |  |
| `--store_page_config` | `unknown` |  |  |
| `--target_audience` | `unknown` |  |  |
| `--tax_collection_enabled_states` | `array` |  |  |
| `--tax_identifiers` | `array` |  |  |
| `--tax_remitted_by` | `string` |  |  |
| `--tax_type` | `string` |  |  |
| `--title` | `unknown` |  |  |
| `--use_logo_as_opengraph_image_fallback` | `boolean` |  | Whether the account uses its logo as the fallback Open Graph image. |

> Confirm with the user before executing this destructive command.

---

# whop accounts update-preferences

Update Account Preferences

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | Account ID, prefixed `biz_`. |
| `--ads_payment_methods` | `object` |  |  |
| `--ads_reporting_currency` | `string` |  |  |
| `--ads_scheduling_timezone` | `string` |  |  |
| `--cards_auto_top_up` | `boolean` |  | Whether incoming funds are automatically moved to the account's cards balance. Requires a cards balance on the account. |

> Confirm with the user before executing this destructive command.
