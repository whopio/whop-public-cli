---
name: whop-events
description: Conversion and engagement events tracked for attribution. Run `whop events --help` for usage details.
requires_bin: whop
command: whop events
---

# whop events create

Create Event

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | The account to associate with this event. |
| `--action_source` | `unknown` |  |  |
| `--context` | `unknown` |  |  |
| `--currency` | `unknown` |  |  |
| `--custom_name` | `unknown` |  |  |
| `--duration` | `number` |  |  |
| `--event_id` | `unknown` |  |  |
| `--event_name` | `string` |  |  |
| `--event_time` | `unknown` |  |  |
| `--plan_id` | `unknown` |  |  |
| `--product_id` | `unknown` |  |  |
| `--referrer_url` | `unknown` |  |  |
| `--resumed` | `boolean` |  |  |
| `--source` | `unknown` |  |  |
| `--title` | `unknown` |  |  |
| `--url` | `unknown` |  |  |
| `--user` | `unknown` |  |  |
| `--value` | `number` |  |  |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop events list

List Events

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--identifier` | `string` |  | Any hard identifier of the person: a person ID (prsn_*), user ID, email, phone number, or a tracking cookie value (wuid, anonymous ID, fbp/fbc/ttp/ga). Omit to list recent events for the account. |
| `--account_id` | `string` |  | The ID of the account, which will look like biz_*************. Optional for account API keys; required for credentials that can access multiple accounts. |
| `--from` | `string` |  | Start of the time range as an ISO 8601 timestamp. Required when identifier is omitted. |
| `--to` | `string` |  | End of the time range as an ISO 8601 timestamp. Required when identifier is omitted; otherwise defaults to now. |
| `--first` | `number` |  | The number of events to return. |
| `--after` | `string` |  | A cursor for fetching events after a previous page. |
| `--before` | `string` |  | A cursor for fetching events before a later page. |
