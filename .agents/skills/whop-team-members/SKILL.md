---
name: whop-team-members
description: An account's team members and the roles that scope their access. Run `whop team-members --help` for usage details.
requires_bin: whop
command: whop team-members
---

# whop team-members create

Create Team Member

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | Account ID, prefixed `biz_`. |
| `--role` | `string` |  |  |
| `--user_id` | `string` |  | The user to add to the team, prefixed `user_`. |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop team-members delete

Delete Team Member

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | Team member ID — `ausr_` for accepted members, `ausri_` for pending invites. |

> Confirm with the user before executing this destructive command.

---

# whop team-members get

Retrieve Team Member

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | Team member ID — `ausr_` for accepted members, `ausri_` for pending invites. |

---

# whop team-members list

List Team Members

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | Account ID, prefixed `biz_`. |
| `--status` | `string` |  | Only return members with this status: `joined` (accepted members) or `pending` (pending invites). Both are returned by default. |
| `--user_id` | `string` |  | Only return the membership for this user ID, prefixed `user_`. |
| `--role` | `string` |  | Only return members with this role. `custom` matches members on a dashboard-managed custom role. |
| `--created_before` | `string` |  | Only return members added before this ISO 8601 timestamp. |
| `--created_after` | `string` |  | Only return members added after this ISO 8601 timestamp. |
| `--order` | `string` |  | Field used to sort members. |
| `--direction` | `string` |  | Sort direction. Defaults to `desc`. |
| `--first` | `number` |  | Number of members to return. Defaults to 20; maximum 100. |
| `--after` | `string` |  | Cursor for the next page of members. |

---

# whop team-members update

Update Team Member

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | Team member ID — `ausr_` for accepted members, `ausri_` for pending invites. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--role` | `string` |  |  |

> Confirm with the user before executing this destructive command.
