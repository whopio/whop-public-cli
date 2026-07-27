---
name: whop-webhooks
description: Event notifications pushed to your server as things happen. Run `whop webhooks --help` for usage details.
requires_bin: whop
command: whop webhooks
---

# whop webhooks create

Create Webhook

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--api_version` | `string` |  |  |
| `--child_resource_events` | `boolean` |  | Whether or not to send events for child resources. For example, if the webhook is created for a company, enabling this will only send events from the company's sub-merchants (child companies). |
| `--enabled` | `boolean` |  | Whether or not the webhook is enabled. Defaults to `true`. |
| `--events` | `array` |  |  |
| `--resource_id` | `unknown` |  |  |
| `--url` | `string` |  | The URL to send the webhook to. |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop webhooks delete

Delete Webhook

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | Webhook ID, prefixed `hook_`. |

> Confirm with the user before executing this destructive command.

---

# whop webhooks deliveries

List Deliveries

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | Webhook ID, prefixed `hook_`. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--first` | `number` |  | The number of deliveries to return (default 50, max 100). |
| `--after` | `string` |  | A cursor; returns deliveries after this position. |

---

# whop webhooks get

Retrieve Webhook

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | Webhook ID, prefixed `hook_`. |

---

# whop webhooks list

List Webhooks

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  | The unique identifier of the account to list webhooks for. |
| `--app_id` | `string` |  | Only return webhooks attached to this app. Omit to list the company's own webhooks. |
| `--first` | `number` |  | The number of webhooks to return (default 20, max 100). |
| `--after` | `string` |  | A cursor; returns webhooks after this position. |
| `--last` | `number` |  | The number of webhooks to return from the end of the range. |
| `--before` | `string` |  | A cursor; returns webhooks before this position. |

---

# whop webhooks test

Send Test Event

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | Webhook ID, prefixed `hook_`. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--event` | `string` |  | The event to test the webhook for, in dot form (for example `payment.succeeded`). |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop webhooks update

Update Webhook

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | Webhook ID, prefixed `hook_`. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--api_version` | `string` |  |  |
| `--child_resource_events` | `boolean` |  | Whether or not to send events for child resources. |
| `--enabled` | `boolean` |  | Whether or not the webhook is enabled. |
| `--events` | `array` |  |  |
| `--url` | `string` |  |  |

> Confirm with the user before executing this destructive command.
