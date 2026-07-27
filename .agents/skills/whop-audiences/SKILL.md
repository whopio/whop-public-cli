---
name: whop-audiences
description: Reusable targeting lists for ad groups. Run `whop audiences --help` for usage details.
requires_bin: whop
command: whop audiences
---

# whop audiences create

Create Audience

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | Account ID, prefixed `biz_`. |
| `--audience_type` | `string` |  |  |
| `--column_mapping` | `object` |  |  |
| `--count` | `number` |  | Lookalikes only. Number of lookalike audiences to create (1–6). |
| `--file_id` | `string` |  |  |
| `--name` | `string` |  |  |
| `--percentage` | `number` |  | Lookalikes only. Total similarity reach as a whole percent (1–20), sliced evenly across `count` — must be divisible by `count`. |
| `--source_audience_id` | `string` |  |  |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop audiences delete

Delete Audience

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `audience_id` | `string` | yes | Audience ID, prefixed `adaud_`. |

> Confirm with the user before executing this destructive command.

---

# whop audiences list

List Audiences

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | Account ID, prefixed `biz_`. |
| `--audience_id` | `string` |  | Audience ID, prefixed `adaud_`, used to filter the response to one audience. |
| `--audience_type` | `string` |  | Filter by audience type: `custom` (uploaded lists) or `lookalike`. |
| `--first` | `number` |  | Number of audiences to return. Defaults to 20; maximum 100. |
| `--after` | `string` |  | Cursor for the next page of audiences. |
