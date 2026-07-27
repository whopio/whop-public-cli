---
name: whop-files
description: Create file uploads and retrieve uploaded file details. Run `whop files --help` for usage details.
requires_bin: whop
command: whop files
---

# whop files create

Create file

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--filename` | `string` |  | The name of the file including its extension (e.g., "photo.png" or "document.pdf"). |
| `--visibility` | `unknown` |  |  |

> Confirm with the user before executing this destructive command.

---

# whop files get

Retrieve file

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The unique identifier of the file to retrieve. |
