---
name: whop-ads
description: "The creative: copy, assets, and destination URL. Run `whop ads --help` for usage details."
requires_bin: whop
command: whop ads
---

# whop ads create

Create an Ad

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--ad_group` | `object` |  |  |
| `--ad_group_id` | `string` |  |  |
| `--call_to_action` | `string` |  |  |
| `--creatives` | `array` |  |  |
| `--descriptions` | `array` |  |  |
| `--headlines` | `array` |  |  |
| `--lead_form` | `object` |  |  |
| `--lead_form_id` | `string` |  |  |
| `--messaging_config` | `object` |  |  |
| `--multi_advertiser_ads` | `boolean` |  | Whether the ad can appear alongside other advertisers' ads in the same unit. Defaults to true. |
| `--post_id` | `string` |  |  |
| `--post_source` | `string` |  |  |
| `--primary_texts` | `array` |  |  |
| `--social_accounts` | `array` |  |  |
| `--title` | `string` |  |  |
| `--url` | `string` |  |  |
| `--url_parameters` | `object` |  |  |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop ads delete

Delete an Ad

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The ad ID. |

> Confirm with the user before executing this destructive command.

---

# whop ads duplicate

Duplicate an Ad

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The ad ID. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--count` | `number` |  | Number of copies to create (1-10). Defaults to 1. |
| `--preserve_engagement` | `boolean` |  | Whether the copies keep the original post's engagement (likes, comments, shares). Defaults to false. |
| `--target_ad_group_id` | `string` |  |  |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop ads get

Retrieve an Ad

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The ad ID. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--stats_from` | `string` |  | Start of the stats window. |
| `--stats_to` | `string` |  | End of the stats window. |
| `--time_zone` | `string` |  | IANA timezone the stats window is interpreted in. Defaults to UTC. |

---

# whop ads list

List Ads

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | The account the ads belong to. Defaults to the account-scoped key's own account. |
| `--ad_campaign_id` | `string` |  | Only return ads in this ad campaign. |
| `--ad_group_id` | `string` |  | Only return ads in this ad group. |
| `--status` | `string` |  | Only return ads with this status. |
| `--query` | `string` |  | Filter ads by a title or ID substring. |
| `--order` | `string` |  | The field to sort by. Defaults to created_at. Stat columns (spend, impressions, …) rank over the stats_from/stats_to window across the whole list, not just the current page. results, cost_per_result and return_on_ad_spend rank by the same Whop pixel-attributed values the response reports. |
| `--direction` | `string` |  | The sort direction. Defaults to desc. |
| `--created_before` | `string` |  | Only return ads created before this timestamp. |
| `--created_after` | `string` |  | Only return ads created after this timestamp. |
| `--stats_from` | `string` |  | Start of the stats window. Defaults to all-time. |
| `--stats_to` | `string` |  | End of the stats window. Defaults to now. |
| `--time_zone` | `string` |  | IANA timezone (e.g. America/New_York) the stats window is interpreted in. Bare stats_from/stats_to dates resolve to day boundaries on this clock. Defaults to UTC. |
| `--first` | `number` | `20` | The number of ads to return. |
| `--after` | `string` |  | Cursor to fetch the page after (from page_info.end_cursor). |
| `--last` | `number` |  | The number of ads to return from the end of the range. |
| `--before` | `string` |  | Cursor to fetch the page before (from page_info.start_cursor). |

---

# whop ads pause

Pause an Ad

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The ad ID. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop ads unpause

Unpause an Ad

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The ad ID. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop ads update

Update an Ad

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The ad ID. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--call_to_action` | `string` |  |  |
| `--creatives` | `array` |  |  |
| `--descriptions` | `array` |  |  |
| `--headlines` | `array` |  |  |
| `--lead_form` | `object` |  |  |
| `--lead_form_id` | `string` |  |  |
| `--messaging_config` | `object` |  |  |
| `--multi_advertiser_ads` | `boolean` |  | Whether the ad can appear alongside other advertisers' ads in the same unit. Defaults to true. |
| `--post_id` | `string` |  |  |
| `--post_source` | `string` |  |  |
| `--primary_texts` | `array` |  |  |
| `--social_accounts` | `array` |  |  |
| `--title` | `string` |  |  |
| `--url` | `string` |  |  |
| `--url_parameters` | `object` |  |  |

> Confirm with the user before executing this destructive command.
