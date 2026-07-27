---
name: whop-logout
description: Log out (alias for `auth logout`). Run `whop logout --help` for usage details.
requires_bin: whop
command: whop logout
---

# whop logout

Log out (alias for `auth logout`)

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--profile` | `string` |  | Profile to remove (defaults to the active profile) |
| `--all` | `boolean` |  | Remove every profile and its stored secret (full reset) |

## Output

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `removed` | `array` | yes | The removed profile name(s) |
| `newActive` | `unknown` | yes | The profile that is now active, if any |
