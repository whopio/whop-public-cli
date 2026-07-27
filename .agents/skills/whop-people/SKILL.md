---
name: whop-people
description: Visitors and customers of an account, with identity, purchase, and traffic profiles. Run `whop people --help` for usage details.
requires_bin: whop
command: whop people
---

# whop people get

Retrieve Person

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `person_id` | `string` | yes | The person ID, user ID, email address, or phone number to look up. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | The ID of the account, which will look like biz_*************. Optional for account API keys; required for credentials that can access multiple accounts. |

---

# whop people list

List People

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | The ID of the account, which will look like biz_*************. Optional for account API keys; required for credentials that can access multiple accounts. |
| `--query` | `string` |  | Search people by name, email, phone, or whop user ID (case-insensitive substring match). |
| `--source` | `array` |  | Only include people acquired from any of these sources. A source is a platform (google, meta, whop, direct), custom:<utm source>, an ad entity tag (adcamp_/adgrp_/ad_), or a referrer domain like example.com. |
| `--event_name` | `array` |  | Only include people who fired any of these events, e.g. payment.completed or page.checkout.view. |
| `--custom_event` | `string` |  | Only include people who fired this custom pixel event. |
| `--audience_id` | `string` |  | Only include people in this audience. |
| `--user_id` | `string` |  | Only include the person linked to this whop user ID. |
| `--email` | `string` |  | Only include the person linked to this email address. |
| `--phone` | `string` |  | Only include the person linked to this phone number. |
| `--country` | `string` |  | Only include people whose most recent visit came from this ISO 3166-1 alpha-2 country code. |
| `--has_purchased` | `boolean` |  | true for customers only, false for people who have never purchased. |
| `--first_seen_after` | `string` |  | Only include people first seen at or after this ISO 8601 timestamp. |
| `--first_seen_before` | `string` |  | Only include people first seen before this ISO 8601 timestamp. |
| `--last_seen_after` | `string` |  | Only include people last seen at or after this ISO 8601 timestamp. |
| `--last_seen_before` | `string` |  | Only include people last seen before this ISO 8601 timestamp. |
| `--first` | `number` |  | The number of people to return (default 100, max 100). |
| `--after` | `string` |  | A cursor for fetching people after a previous page. |
| `--before` | `string` |  | A cursor for fetching people before a later page. |
| `--order` | `string` |  | Column to sort by. Defaults to last_seen_at. |
| `--direction` | `string` |  | Sort direction. Defaults to desc. |
