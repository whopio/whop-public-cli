---
name: whop-bounty-submissions
description: Work submitted to a bounty, from attempt to payout. Run `whop bounty-submissions --help` for usage details.
requires_bin: whop
command: whop bounty-submissions
---

# whop bounty-submissions create

Create Bounty Submission

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--affiliate_code` | `unknown` |  |  |
| `--bounty_id` | `string` |  | The bounty to submit to (`bnty_` tag). |
| `--deliverable` | `unknown` |  |  |
| `--metadata` | `unknown` |  |  |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop bounty-submissions delete

Cancel Bounty Submission

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `bounty_submission_id` | `string` | yes | The bounty submission to act on (`btys_` tag). |

> Confirm with the user before executing this destructive command.

---

# whop bounty-submissions get

Retrieve Bounty Submission

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `bounty_submission_id` | `string` | yes | The bounty submission to act on (`btys_` tag). |

---

# whop bounty-submissions list

List Bounty Submissions

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | Scope the list to submissions on this account's bounties (`biz_` tag). Requires read access to the account. |
| `--bounty_id` | `string` |  | Only submissions on this bounty (`bnty_` tag). |
| `--status` | `string` |  | Filter by lifecycle state. |
| `--created_after` | `string` |  | Only submissions created after this ISO 8601 timestamp. |
| `--created_before` | `string` |  | Only submissions created before this ISO 8601 timestamp. |
| `--order` | `string` |  | Sort field. |
| `--direction` | `string` |  | Sort direction. |
| `--first` | `number` | `20` | Number of submissions to return from the start of the window. |
| `--after` | `string` |  | Cursor to paginate forwards from. |
| `--last` | `number` |  | Number of submissions to return from the end of the window. |
| `--before` | `string` |  | Cursor to paginate backwards from. |

---

# whop bounty-submissions submit

Submit Bounty Submission

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `bounty_submission_id` | `string` | yes | The claimed attempt to submit for review (`btys_` tag). |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.
