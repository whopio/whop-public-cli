---
name: whop-upgrade
description: Update the whop CLI to the latest version. Run `whop upgrade --help` for usage details.
requires_bin: whop
command: whop upgrade
---

# whop upgrade

Update the whop CLI to the latest version

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--check` | `boolean` |  | Only check for a newer version, don't install it |
| `--background` | `boolean` |  | Internal: refresh the update cache silently (spawned by the automatic check) |

## Output

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `status` | `string` | yes | Result of the upgrade check |
| `current` | `string` | yes | The version currently running |
| `latest` | `string` | yes | The latest released version |
| `channel` | `string` | yes | How this CLI was installed |
| `upgradeCommand` | `string` | no | Run this shell command to install the available update |

## Examples

```sh
# Update to the latest version
whop upgrade

# Check for a newer version without installing
whop upgrade --check true
```
