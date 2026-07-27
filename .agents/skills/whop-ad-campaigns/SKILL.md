---
name: whop-ad-campaigns
description: Platform, objective, and budget for a set of ads. Run `whop ad-campaigns --help` for usage details.
requires_bin: whop
command: whop ad-campaigns
---

# whop ad-campaigns create

Create an Ad Campaign

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  |  |
| `--bid_type` | `string` |  |  |
| `--budget_amount` | `number` |  | The campaign's budget, in the ad account's currency. Required when budget_optimization is `ad_campaign`; omit when each ad group sets its own budget. |
| `--budget_optimization` | `string` |  |  |
| `--budget_type` | `string` |  |  |
| `--desired_cost_per_result` | `number` |  | Cost per result to aim for (`average_target`) or never exceed (`maximum_target`). Only for campaigns that own the budget. |
| `--ends_at` | `string` |  |  |
| `--objective` | `string` |  |  |
| `--platform` | `string` |  |  |
| `--special_ad_categories` | `array` |  |  |
| `--starts_at` | `string` |  |  |
| `--title` | `string` |  | The title of the campaign. |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop ad-campaigns delete

Delete an Ad Campaign

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The ad campaign ID. |

> Confirm with the user before executing this destructive command.

---

# whop ad-campaigns duplicate

Duplicate an Ad Campaign

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The ad campaign ID. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--count` | `number` |  | Number of copies to create (1-10). Defaults to 1. |
| `--preserve_engagement` | `boolean` |  | Whether the copied ads keep the original posts' engagement (likes, comments, shares). Defaults to false. |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop ad-campaigns get

Retrieve an Ad Campaign

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The ad campaign ID. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--stats_from` | `string` |  | Start of the stats window. |
| `--stats_to` | `string` |  | End of the stats window. |
| `--time_zone` | `string` |  | IANA timezone the stats window is interpreted in. Defaults to UTC. |

---

# whop ad-campaigns list

List Ad Campaigns

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | The account the campaigns belong to. Defaults to the account-scoped key's own account. |
| `--status` | `string` |  | Only return campaigns with this status. |
| `--query` | `string` |  | Filter campaigns by a title or ID substring. |
| `--order` | `string` |  | The field to sort by. Defaults to created_at. Stat columns (spend, impressions, …) rank over the stats_from/stats_to window across the whole list, not just the current page. results, cost_per_result and return_on_ad_spend rank by the same Whop pixel-attributed values the response reports. |
| `--direction` | `string` |  | The sort direction. Defaults to desc. |
| `--created_before` | `string` |  | Only return campaigns created before this timestamp. |
| `--created_after` | `string` |  | Only return campaigns created after this timestamp. |
| `--stats_from` | `string` |  | Start of the stats window. Defaults to all-time. |
| `--stats_to` | `string` |  | End of the stats window. Defaults to now. |
| `--time_zone` | `string` |  | IANA timezone (e.g. America/New_York) the stats window is interpreted in. Bare stats_from/stats_to dates resolve to day boundaries on this clock. Defaults to UTC. |
| `--first` | `number` | `20` | The number of campaigns to return. |
| `--after` | `string` |  | Cursor to fetch the page after (from page_info.end_cursor). |
| `--last` | `number` |  | The number of campaigns to return from the end of the range. |
| `--before` | `string` |  | Cursor to fetch the page before (from page_info.start_cursor). |

---

# whop ad-campaigns pause

Pause an Ad Campaign

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The ad campaign ID. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop ad-campaigns retry_payment

Retry a Failed Ad Campaign Payment

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The ad campaign ID. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop ad-campaigns unpause

Unpause an Ad Campaign

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The ad campaign ID. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop ad-campaigns update

Update an Ad Campaign

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The ad campaign ID. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--bid_type` | `string` |  |  |
| `--budget_amount` | `number` |  | The campaign budget, in the account's currency. Interpreted as daily or lifetime per the campaign's existing budget type. |
| `--budget_optimization` | `string` |  |  |
| `--ends_at` | `string` |  |  |
| `--special_ad_categories` | `array` |  |  |
| `--starts_at` | `string` |  |  |
| `--status` | `string` |  |  |
| `--title` | `string` |  |  |

> Confirm with the user before executing this destructive command.
