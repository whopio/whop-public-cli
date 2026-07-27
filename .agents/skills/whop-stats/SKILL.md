---
name: whop-stats
description: Aggregated financial, audience, and traffic reporting. Run `whop stats --help` for usage details.
requires_bin: whop
command: whop stats
---

# whop stats get

Retrieve Metric

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `metric` | `string` | yes | The metric to retrieve, for example net_revenue. Use GET /stats to see every metric key. The metric sets the unit and the properties you can filter or break down by. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | The account this query concerns, for example biz_AbC123. |
| `--from` | `string` |  | Start of the range — a date (YYYY-MM-DD), expanded to the start of that day, or an ISO 8601 timestamp (for example 2026-07-16T16:37:00Z), used exactly. |
| `--to` | `string` |  | End of the range — a date (YYYY-MM-DD), expanded to the end of that day, or an ISO 8601 timestamp (for example 2026-07-17T16:37:00Z), used exactly. |
| `--interval` | `string` |  | How wide each point is. Defaults to day. Snapshot metrics are day-only. |
| `--breakdown_by` | `string` |  | Split the metric out by one of its properties — each point gets a breakdown array. For example breakdown_by=currency returns an entry for usd, an entry for eur, and so on. |
| `--convert_to` | `string` |  | Display currency for money metrics — every amount is converted into this ISO currency using the exchange rate on each period's date. Defaults to usd. For the ads metrics (ad_spend, ad_report), pass the account's ads reporting currency to match the ad entity endpoints. On transaction metrics, it is ignored when you filter or break down by currency (those report the original transaction currency, unconverted). |
| `--currency` | `string` |  | Select the source currency or asset on metrics that list currency. For transaction metrics, for example currency=eur, values are reported without conversion. For asset_price, use btc or xaut and convert_to=usd. Pair with breakdown_by=currency to split a metric by currency. |
| `--time_zone` | `string` |  | IANA time zone to bucket the series in, for example America/New_York. Defaults to UTC. Not accepted by snapshot metrics, which are UTC only. |
| `--payment_method` | `string` |  | Filter to a single payment method, for example card or crypto. Available on metrics that list payment_method. |
| `--card_network` | `string` |  | Filter to a single card brand, for example visa. A refinement of payment_method=card. Available on metrics that list card_network. |
| `--dispute_reason` | `string` |  | Filter disputes to a normalized reason, for example product_not_received. Pair with breakdown_by=dispute_reason to split dispute counts by reason. |
| `--source` | `string` |  | Filter to a single GMV source, for example payments — or, on the traffic metrics, a visit source (whop_ads, direct, or a utm_source value). Pair with breakdown_by=source to split by source. Available on metrics that list source. |
| `--hostname` | `string` |  | Filter traffic metrics to one website hostname, for example shop.example.com. Pair with breakdown_by=hostname to split by website. |
| `--page` | `string` |  | Filter traffic metrics to one page — a hostname plus normalized path, for example shop.example.com/pricing. Pair with breakdown_by=page to split by page. |
| `--device_type` | `string` |  | Filter traffic metrics to one device type: desktop, mobile, tablet, or unknown. Pair with breakdown_by=device_type to split by device. |
| `--country_code` | `string` |  | Filter traffic metrics to one visitor country (uppercase ISO 3166-1 alpha-2, for example US). Pair with breakdown_by=country_code to split by country. |
| `--event_name` | `string` |  | Filter the events metric to one tracked event name, for example pixel.page or pixel.custom. Pair with breakdown_by=event_name to split by event. |
| `--event_type` | `string` |  | Filter the events metric to a canonical group of events: page_view (pixel page views plus whop.com store views), checkout_start (hosted and embedded checkout views), or other. Pair with breakdown_by=event_type to split by group. |
| `--custom_name` | `string` |  | Filter the events metric to one merchant-defined custom event name. Only valid alongside event_name=pixel.custom. Pair with breakdown_by=custom_name to split custom events by name. |
| `--segment` | `string` |  | Filter to a single wallet-balance segment, for example available. Pair with breakdown_by=segment to split the balance. Available on metrics that list segment. |
| `--category` | `string` |  | Filter to a single balance-activity category, for example payments. Pair with breakdown_by=category to split the activity. Available on metrics that list category. |
| `--merchant` | `string` |  | Filter to a single cashback merchant bucket, for example whop-ads. Pair with breakdown_by=merchant to split cashback by merchant. Available on metrics that list merchant. |
| `--fee_type` | `string` |  | Filter to a single fee type. Pair with breakdown_by=fee_type to split fees by type. Available on metrics that list fee_type. |
| `--product` | `string` |  | Filter to a single product (access pass id), for example prod_AbC123. Pair with breakdown_by=product. Available on metrics that list product. |
| `--status` | `string` |  | Filter to a single membership status. Pair with breakdown_by=status. Available on metrics that list status. |
| `--access_level` | `string` |  | Filter to a single access level. Pair with breakdown_by=access_level. Available on metrics that list access_level. |
| `--most_recent_action` | `string` |  | Filter to a single most-recent member action. Pair with breakdown_by=most_recent_action. Available on metrics that list most_recent_action. |
| `--referred_user_id` | `string` |  | Filter a referral metric to the businesses attributed to one person you referred, for example user_AbC123. Available on metrics that list referred_user_id. |
| `--ad_campaign_ids` | `array` |  | Ad campaign ids (adcamp_...) to scope the report to; stats are summed across them. Available on metrics that list ad_campaign_ids. |
| `--ad_group_ids` | `array` |  | Ad group ids (adgrp_...) to scope the report to; stats are summed across them. Available on metrics that list ad_group_ids. |
| `--ad_ids` | `array` |  | Ad ids (ad_...) to scope the report to; stats are summed across them. Available on metrics that list ad_ids. |
| `--snapshot_window` | `string` |  | Window used by a snapshot metric. Ordinary snapshots accept 30d as their trailing activity window. Cohorted dispute metrics accept 7d or 28d as the sales-transaction pool; their attribution window is fixed in the metric name. Each metric lists its accepted values in the catalog. |

---

# whop stats list

List Metrics
