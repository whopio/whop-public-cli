---
name: whop-quickstart
description: Set up the business account the CLI should use. Run `whop quickstart --help` for usage details.
requires_bin: whop
command: whop quickstart
---

# whop quickstart

Set up the business account the CLI should use

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--business_name` | `string` |  | Name for a new business account (OAuth logins only) |
| `--account_id` | `string` |  | Existing business account to use (biz_xxx) |

## Output

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `account` | `object` | yes | The business account future CLI commands will use |
| `account.id` | `string` | yes | The selected business account ID |
| `account.title` | `unknown` | yes | The business account name |
| `account.route` | `unknown` | yes | The business account route |
| `created` | `boolean` | yes | Whether this run created the selected business account |

## Examples

```sh
# Choose or create a business interactively
whop quickstart

# Choose an existing business account
whop quickstart --account_id biz_xxx

# Create and select a new business account
whop quickstart --business_name Acme
```

> OAuth users can choose or create a business. API keys are tied to one business. Agents and scripts should pass --account_id or --business_name when the choice is ambiguous.
