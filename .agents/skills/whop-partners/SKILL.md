---
name: whop-partners
description: The users and businesses you referred to Whop, and what you earn from them. Run `whop partners --help` for usage details.
requires_bin: whop
command: whop partners
---

# whop partners create

Enroll as a Whop partner

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop partners earnings

List referred business earnings

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The partner business ID (a coma_ identifier). |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--status` | `string` |  | Filter by earning status. |
| `--first` | `number` | `20` |  |
| `--after` | `string` |  |  |
| `--last` | `number` |  |  |
| `--before` | `string` |  |  |
| `--order` | `string` |  | The field to sort earnings by. |
| `--direction` | `string` |  | Sort direction. |
| `--created_before` | `string` |  | Only return earnings created before this timestamp. |
| `--created_after` | `string` |  | Only return earnings created after this timestamp. |

---

# whop partners get

Retrieve a referred business

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The partner business ID (a coma_ identifier). |

---

# whop partners leaderboard

Retrieve the leaderboard

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--period` | `string` |  | Time window for the rankings. `day`, `month`, and `year` count earnings since the start of the current calendar day, month, or year; `last_30_days` counts earnings over the trailing 30 days; `all_time` ranks lifetime earnings. |

---

# whop partners list

List referred businesses

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--status` | `string` |  | Filter by referral status. |
| `--has_earnings` | `boolean` |  | When true, only businesses with pending or completed earnings paid to the caller. |
| `--first` | `number` | `20` | Number of partner businesses to return from the start of the window. |
| `--after` | `string` |  | Cursor to fetch the page after (from page_info.end_cursor). |
| `--last` | `number` |  | Number of partner businesses to return from the end of the window. |
| `--before` | `string` |  | Cursor to fetch the page before (from page_info.start_cursor). |
| `--order` | `string` |  | The field to sort partner businesses by. |
| `--direction` | `string` |  | Sort direction. |
| `--created_before` | `string` |  | Only return partner businesses created before this timestamp. |
| `--created_after` | `string` |  | Only return partner businesses created after this timestamp. |
| `--referred_user_id` | `string` |  | Filter to referrals attributed to this user. For first-tier referrals, this is the referred account owner; for second-tier referrals, this is the partner you recruited. |
| `--referred_username` | `string` |  | Filter by the referred user's exact username. Ignored when `referred_user_id` is present. |
| `--tier` | `string` |  | Filter to only first-tier referrals or only second-tier referrals. |

---

# whop partners referred_users

List the users the caller referred

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--has_businesses` | `boolean` |  | When true, only referred users who brought at least one business onto Whop. |
| `--has_earning_businesses` | `boolean` |  | When true, only referred users with at least one business that has generated earnings. |
| `--first` | `number` | `20` | Number of referred users to return from the start of the window. |
| `--after` | `string` |  | Cursor to fetch the page after (from page_info.end_cursor). |
| `--last` | `number` |  | Number of referred users to return from the end of the window. |
| `--before` | `string` |  | Cursor to fetch the page before (from page_info.start_cursor). |
