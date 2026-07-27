---
name: whop-ledgers
description: The activity feed behind an account or user's balance. Run `whop ledgers --help` for usage details.
requires_bin: whop
command: whop ledgers
---

# whop ledgers list

List Financial Activity

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | The owning account ID (a biz_ identifier). Provide this or user_id. |
| `--user_id` | `string` |  | The owning user ID (a user_ identifier). Provide this or account_id. |
| `--include_owned_accounts` | `boolean` |  | When true, aggregates the authenticated user's personal ledger with the businesses they own (owner role with balance read) into one feed. Requires user_id to be the authenticated user; cannot be combined with account_id or the settlement-date filters. Each returned row includes the owning `account`. |
| `--line_types` | `array` |  | Optional ledger line categories to include. Some categories (for example `onchain_deposit`, which covers inbound crypto deposits such as MoonPay onramps) are only returned when explicitly requested here. |
| `--currency` | `string` |  | Optional currency code filter, for example `usd`. |
| `--posted_after` | `string` |  | Only include rows posted after this ISO 8601 timestamp. |
| `--posted_before` | `string` |  | Only include rows posted before this ISO 8601 timestamp. |
| `--available_after` | `string` |  | Only include rows whose funds became withdrawable on or after this `YYYY-MM-DD` settlement date (UTC), distinct from posted_at. Requires currency. |
| `--available_before` | `string` |  | Only include rows whose funds became withdrawable on or before this `YYYY-MM-DD` settlement date (UTC). Set equal to available_after for a single day. Requires currency. |
| `--limit` | `number` | `20` | Maximum number of rows to return. |
| `--cursor` | `string` |  | Cursor returned by the previous page. |

---

# whop ledgers report

Get Financial Report

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | The owning account ID (a biz_ identifier), or `global` for a platform-wide report across all ledger accounts (requires internal admin access). |
| `--report_type` | `string` |  | The type of financial report to generate. |
| `--currency` | `string` |  | Filter rows to this currency, for example `usd`. Defaults to `usd` unless `in_currency` is provided. |
| `--in_currency` | `string` |  | Aggregate all activity into this display currency via FX conversion. |
| `--from_date` | `string` |  | Start of the report window as an ISO 8601 timestamp (UTC). Required for platform-wide (global) reports. |
| `--to_date` | `string` |  | End of the report window as an ISO 8601 timestamp (UTC). Required for platform-wide (global) reports. |
| `--group_by` | `string` |  | Grouping granularity for report rows. |
| `--timezone` | `string` |  | IANA timezone (for example `America/New_York`) used to bucket report periods and to interpret calendar-day boundaries for balance snapshots. Defaults to UTC. from_date/to_date remain exact instants regardless of this setting. Platform-wide (global) reports are UTC-only and reject other timezones. |
| `--cumulative` | `boolean` | `false` | Platform-wide (global) reports only: when true, return cumulative balances as of to_date (all history, no lower bound) instead of activity within the period. |
| `--scope_account_id` | `string` |  | Platform-wide (global) reports only: narrow the report to ledger lines on the ledger account owned by this account ID (a biz_ identifier). Ignored unless account_id is `global`. |
