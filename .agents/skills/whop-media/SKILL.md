---
name: whop-media
description: AI-generated assets, billed from a balance, attachable wherever files are accepted. Run `whop media --help` for usage details.
requires_bin: whop
command: whop media
---

# whop media generate

Generate Media Asset

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--account_id` | `string` |  |  |
| `--duration_seconds` | `unknown` |  |  |
| `--prompt` | `string` |  | What to generate. Up to 2,000 characters. |
| `--reference_media` | `array` |  |  |
| `--resolution` | `string` |  |  |
| `--type` | `string` |  |  |
| `--idempotency-key` | `string` |  | A unique key that makes this request safe to retry. See [Idempotent requests](https://docs.whop.com/developer/api/idempotency). |
| `--wait` | `boolean` |  | Block until generation finishes and return the terminal asset (with file.id when ready) |
| `--timeout` | `number` | `600` | Max seconds to wait with --wait before giving up |

## Examples

```sh
# Generate an image and wait for the finished file
whop media generate --type image --prompt A running club jogging across a bridge at sunrise --wait true

# Generate a 5s video and wait
whop media generate --type video --prompt Sneaker product spin on a white background --duration_seconds 5 --wait true
```

---

# whop media get

Retrieve Media Asset

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | Media asset ID, prefixed `media_`. |
