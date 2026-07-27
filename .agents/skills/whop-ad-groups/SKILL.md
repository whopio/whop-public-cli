---
name: whop-ad-groups
description: Audience, placements, and schedule within a campaign. Run `whop ad-groups --help` for usage details.
requires_bin: whop
command: whop ad-groups
---

# whop ad-groups create

Create an Ad Group

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--ad_campaign_id` | `string` |  | The ad campaign to create the ad group in, prefixed `adcamp_`. |
| `--audiences` | `object` |  |  |
| `--bid_type` | `string` |  |  |
| `--budget_amount` | `number` |  | This ad group's budget, in the ad account's currency. Omit when the budget is set on the campaign instead. |
| `--budget_type` | `string` |  |  |
| `--conversion_event` | `unknown` |  |  |
| `--conversion_location` | `string` |  |  |
| `--demographics` | `object` |  |  |
| `--desired_cost_per_result` | `number` |  | Cost per result to aim for (`average_target`) or never exceed (`maximum_target`). |
| `--detailed_targeting` | `object` |  |  |
| `--devices` | `object` |  |  |
| `--dynamic_creative` | `boolean` |  | Let the ad platform automatically mix and match this ad group's creatives and copy to find the best-performing combinations. Set at creation; can't be changed afterward. |
| `--ends_at` | `string` |  |  |
| `--frequency_cap` | `object` |  |  |
| `--languages` | `array` |  |  |
| `--message_apps` | `array` |  |  |
| `--minimum_daily_spend` | `number` |  | Minimum the ad group tries to spend each day. |
| `--optimization_goal` | `string` |  |  |
| `--placements` | `unknown` |  |  |
| `--regions` | `object` |  |  |
| `--starts_at` | `string` |  |  |
| `--status` | `string` |  |  |
| `--title` | `string` |  |  |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop ad-groups delete

Delete an Ad Group

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The ad group ID. |

> Confirm with the user before executing this destructive command.

---

# whop ad-groups duplicate

Duplicate an Ad Group

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The ad group ID. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--count` | `number` |  | Number of copies to create (1-10). Defaults to 1. |
| `--preserve_engagement` | `boolean` |  | Whether the copied ads keep the original posts' engagement (likes, comments, shares). Defaults to false. |
| `--target_ad_campaign_id` | `string` |  |  |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop ad-groups estimate_reach

Estimate Ad Group Reach

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  |  |
| `--audiences` | `object` |  |  |
| `--demographics` | `object` |  |  |
| `--detailed_targeting` | `object` |  |  |
| `--devices` | `object` |  |  |
| `--languages` | `array` |  |  |
| `--platform` | `string` |  |  |
| `--regions` | `object` |  |  |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop ad-groups get

Retrieve an Ad Group

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The ad group ID. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--stats_from` | `string` |  | Start of the stats window. |
| `--stats_to` | `string` |  | End of the stats window. |
| `--time_zone` | `string` |  | IANA timezone the stats window is interpreted in. Defaults to UTC. |

---

# whop ad-groups list

List Ad Groups

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | Account whose ad groups to list. Defaults to the authenticated account. |
| `--ad_campaign_id` | `string` |  | Filter to ad groups in this campaign. |
| `--status` | `string` |  | Filter to ad groups with this status. |
| `--query` | `string` |  | Filter ad groups by a title or ID substring. |
| `--order` | `string` |  | The field to sort by. Defaults to created_at. Stat columns (spend, impressions, …) rank over the stats_from/stats_to window across the whole list, not just the current page. results, cost_per_result and return_on_ad_spend rank by the same Whop pixel-attributed values the response reports. |
| `--direction` | `string` |  | The sort direction. Defaults to desc. |
| `--created_before` | `string` |  | Only return ad groups created before this timestamp. |
| `--created_after` | `string` |  | Only return ad groups created after this timestamp. |
| `--stats_from` | `string` |  | Start of the stats window. Defaults to all-time. |
| `--stats_to` | `string` |  | End of the stats window. Defaults to now. |
| `--time_zone` | `string` |  | IANA timezone (e.g. America/New_York) the stats window is interpreted in. Bare stats_from/stats_to dates resolve to day boundaries on this clock. Defaults to UTC. |
| `--first` | `number` | `20` | The number of ad groups to return. |
| `--after` | `string` |  | Cursor to fetch the page after (from page_info.end_cursor). |
| `--last` | `number` |  | The number of ad groups to return from the end of the range. |
| `--before` | `string` |  | Cursor to fetch the page before (from page_info.start_cursor). |

---

# whop ad-groups pause

Pause an Ad Group

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The ad group ID. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop ad-groups targeting_options

Search Targeting Options

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | Account to search on behalf of. Defaults to the authenticated account. |
| `--platform` | `string` |  | The ad network whose targeting taxonomy to search. |
| `--query` | `string` |  | The search term. Blank browses the fixed lists; interests and locations return nothing without one. |
| `--types` | `array` |  | Kinds of targeting options to search. Defaults to all of them. |
| `--location_types` | `array` |  | Narrow location results to these kinds of places. Only applies when `types` includes `locations`. |
| `--country` | `string` |  | Narrow location results to one country, as an ISO 3166-1 code such as `US`. Only applies when `types` includes `locations`. |
| `--limit` | `number` | `25` | Maximum number of results per requested type. |

---

# whop ad-groups unpause

Unpause an Ad Group

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The ad group ID. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop ad-groups update

Update an Ad Group

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The ad group ID. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--audiences` | `object` |  |  |
| `--bid_type` | `string` |  |  |
| `--budget_amount` | `number` |  | This ad group's budget, in the ad account's currency. Omit when the budget is set on the campaign instead. |
| `--budget_type` | `string` |  |  |
| `--conversion_event` | `unknown` |  |  |
| `--conversion_location` | `string` |  |  |
| `--demographics` | `object` |  |  |
| `--desired_cost_per_result` | `number` |  | Cost per result to aim for (`average_target`) or never exceed (`maximum_target`). |
| `--detailed_targeting` | `object` |  |  |
| `--devices` | `object` |  |  |
| `--ends_at` | `string` |  |  |
| `--frequency_cap` | `object` |  |  |
| `--languages` | `array` |  |  |
| `--message_apps` | `array` |  |  |
| `--minimum_daily_spend` | `number` |  | Minimum the ad group tries to spend each day. |
| `--optimization_goal` | `string` |  |  |
| `--placements` | `unknown` |  |  |
| `--regions` | `object` |  |  |
| `--starts_at` | `string` |  |  |
| `--status` | `string` |  |  |
| `--title` | `string` |  |  |

> Confirm with the user before executing this destructive command.
