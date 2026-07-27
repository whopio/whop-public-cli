---
name: whop-app-builds
description: Versioned build artifacts deployed to an app's platforms. Run `whop app-builds --help` for usage details.
requires_bin: whop
command: whop app-builds
---

# whop app-builds create

Create App Build

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--ai_prompt_id` | `string` |  |  |
| `--app_id` | `string` |  |  |
| `--attachment` | `object` |  | The uploaded build file: `{ id }` for an existing file or `{ direct_upload_id }` for a completed direct upload. |
| `--checksum` | `string` |  | A client-generated checksum of the build file, used to verify file integrity when unpacked. |
| `--platform` | `string` |  |  |
| `--source_attachment` | `object` |  |  |
| `--supported_app_view_types` | `array` |  |  |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.

---

# whop app-builds get

Retrieve App Build

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | App build ID, prefixed `abld_`. |

---

# whop app-builds list

List App Builds

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--app_id` | `string` |  | The app to list builds for, prefixed `app_`. |
| `--platform` | `string` |  | Filter builds by target platform. |
| `--status` | `string` |  | Filter builds by review status. |
| `--created_before` | `number` |  | Only return builds created before this ISO 8601 timestamp. |
| `--created_after` | `number` |  | Only return builds created after this ISO 8601 timestamp. |
| `--first` | `number` |  | The number of builds to return (default 20, max 100). |
| `--after` | `string` |  | A cursor; returns builds after this position. |
| `--last` | `number` |  | The number of builds to return from the end of the range. |
| `--before` | `string` |  | A cursor; returns builds before this position. |

---

# whop app-builds promote

Promote App Build

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | App build ID, prefixed `abld_`. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |

> Confirm with the user before executing this destructive command.
