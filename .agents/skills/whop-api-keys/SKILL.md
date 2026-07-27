---
name: whop-api-keys
description: Programmatic credentials for an account or app. Run `whop api-keys --help` for usage details.
requires_bin: whop
command: whop api-keys
---

# whop api-keys create

Create API Key

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--expires_at` | `unknown` |  |  |
| `--ip_allowlist` | `unknown` |  |  |
| `--name` | `string` |  | A human-readable name for the API key, such as 'Production API Key'. |
| `--permissions` | `object` |  | The permissions policy for the API key: explicit permission statements, or a system role to inherit from. Statements without a `resources` array default to the owning company (company keys) or every key-addressable resource (app keys). |
| `--resource_id` | `string` |  | The company (`biz_`) or app (`app_`) tag to create the API key for. |
| `--resource_type` | `string` |  |  |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop api-keys delete

Delete API Key

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | API key ID, prefixed `apik_`. |

> Confirm with the user before executing this destructive command.

---

# whop api-keys get

Retrieve API Key

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | API key ID, prefixed `apik_`. |

---

# whop api-keys list

List API Keys

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--resource_id` | `string` |  | The company (`biz_`) or app (`app_`) tag to list API keys for. |
| `--resource_type` | `string` |  | The type of resource that owns the API keys. |
| `--created_before` | `number` |  | Only return API keys created before this ISO 8601 timestamp. |
| `--created_after` | `number` |  | Only return API keys created after this ISO 8601 timestamp. |
| `--first` | `number` |  | The number of API keys to return (default 20, max 100). |
| `--after` | `string` |  | A cursor; returns API keys after this position. |
| `--last` | `number` |  | The number of API keys to return from the end of the range. |
| `--before` | `string` |  | A cursor; returns API keys before this position. |
| `--order` | `string` |  | The field to sort API keys by. |
| `--direction` | `string` |  | Sort direction. |

---

# whop api-keys permissions

List Permissions

---

# whop api-keys rotate

Rotate API Key

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | API key ID, prefixed `apik_`. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop api-keys update

Update API Key

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | API key ID, prefixed `apik_`. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--expires_at` | `unknown` |  |  |
| `--ip_allowlist` | `unknown` |  |  |
| `--name` | `unknown` |  |  |
| `--permissions` | `object` |  |  |

> Confirm with the user before executing this destructive command.
