---
name: whop-users
description: "A person on Whop: profile and connected identities. Run `whop users --help` for usage details."
requires_bin: whop
command: whop users
---

# whop users access

Check User Access

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The user_ tag or username to check access for. |
| `resource_id` | `string` | yes | An account (biz_), product (prod_), or experience (exp_) ID. |

---

# whop users get

Retrieve User

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | User ID (prefixed `user_`) or username. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | When set, returns the user's account-specific profile overrides for this account. |

---

# whop users list

List Users

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--query` | `string` |  | A search term to filter users by name or username. |
| `--first` | `number` |  | The number of users to return (max 50). |
| `--after` | `string` |  | A cursor; returns users after this position. |
| `--last` | `number` |  | The number of users to return from the end of the range. |
| `--before` | `string` |  | A cursor; returns users before this position. |

---

# whop users me

Retrieve Current User

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | When set, returns your account-specific profile overrides for this account. |
| `--include_balance_history` | `boolean` |  | Also compute your balance history (opt-in; runs a heavier query). Ignored for callers without balance-read scope. |
| `--from` | `string` |  | Balance-history window start, ISO 8601 date or datetime. Defaults to 30 days ago. Only used with `include_balance_history`. |
| `--to` | `string` |  | Balance-history window end, ISO 8601 date or datetime. Defaults to now. Only used with `include_balance_history`. |
| `--interval` | `string` |  | Balance-history point granularity. Defaults to `day`. Only used with `include_balance_history`. |
| `--time_zone` | `string` |  | IANA time zone the balance-history points are bucketed in. Defaults to `UTC`. Only used with `include_balance_history`. |

---

# whop users recommend_actions

List Recommended Actions

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | `me`, or the authenticated user's own `user_` tag or username. |

---

# whop users update

Update User

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | User ID (prefixed `user_`) or username. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | The account whose profile override to update. Required for API key callers. |
| `--bio` | `string` |  |  |
| `--name` | `string` |  |  |
| `--profile_picture` | `object` |  |  |
| `--username` | `string` |  |  |

> Confirm with the user before executing this destructive command.

---

# whop users update-me

Update Current User

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | When set, updates the authenticated user's profile override for this account instead of their global profile. |
| `--bio` | `string` |  |  |
| `--name` | `string` |  |  |
| `--profile_picture` | `object` |  |  |
| `--username` | `string` |  |  |

> Confirm with the user before executing this destructive command.
