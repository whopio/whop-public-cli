---
name: whop-apps
description: Build and deploy fully-hosted web apps on Whop (*.whop.app) — Vite apps served from Cloudflare Workers. Run `whop apps --help` for usage details.
requires_bin: whop
command: whop apps
---

# whop apps builds get

Retrieve app build

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The unique identifier of the app build to retrieve. |

---

# whop apps builds list

List app builds

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--after` | `unknown` |  |  |
| `--before` | `unknown` |  |  |
| `--first` | `number` |  |  |
| `--last` | `number` |  |  |
| `--app_id` | `string` |  |  |
| `--platform` | `unknown` |  |  |
| `--status` | `unknown` |  |  |
| `--created_before` | `unknown` |  |  |
| `--created_after` | `unknown` |  |  |

---

# whop apps builds promote

Promote app build

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The unique identifier of the app build to promote to production, starting with 'abld_'. |

> Confirm with the user before executing this destructive command.

---

# whop apps create

Create app

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--base_url` | `unknown` |  |  |
| `--company_id` | `string` |  |  |
| `--icon` | `unknown` |  |  |
| `--name` | `string` |  | The display name for the app, shown to users on the app store and product pages. |
| `--redirect_uris` | `unknown` |  |  |
| `--route` | `unknown` |  |  |

> Confirm with the user before executing this destructive command.

---

# whop apps deploy

Build, upload and ship this app live

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--dir` | `string` |  | Project directory (defaults to the current directory) |
| `--app` | `string` |  | Link this project to an app (app_xxx) before deploying — writes whop.app.json, replacing any existing link |
| `--preview` | `boolean` |  | Upload the build without promoting it to production |
| `--skip_typecheck` | `boolean` |  | Skip the typecheck step |
| `--skip_build` | `boolean` |  | Skip the build step and upload the existing dist/ output |

## Output

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `id` | `string` | yes |  |
| `status` | `string` | yes |  |
| `is_production` | `boolean` | no |  |
| `url` | `string` | no |  |

## Examples

```sh
# Build and ship to production
whop apps deploy

# Link this project to an existing app, then deploy
whop apps deploy --app app_xxxxxxxx

# Upload a preview build without promoting
whop apps deploy --preview true
```

> Builds the linked project, typechecks, uploads the build + source archives, and promotes to production. Use --preview to upload without promoting, then promote later with `whop apps builds promote <build_id>` — promoting an older build is also how you roll back. To start a new project use `whop apps init`; to fetch an existing app's code use `whop apps pull`.

---

# whop apps dev

Run the local dev server for this app

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--dir` | `string` |  | Project directory (defaults to the current directory) |

> Starts the project's dev script with WHOP_APP_ID set and a short-lived access token injected as WHOP_API_KEY (minted from your CLI credential), so server-side SDK calls work locally without env setup. An explicitly exported WHOP_API_KEY is used as-is.

---

# whop apps get

Retrieve app

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The unique identifier of the app to retrieve. |

---

# whop apps init

Start a new app: register, scaffold, and link a project

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--name` | `string` |  | Name for the new app (prompted for interactively if omitted) |
| `--route` | `string` |  | Route the app is served from (<route>.whop.app). Defaults to a slug of the name |
| `--template` | `string` |  | Clone this app's published source archive (app_xxx) instead of the blank TanStack Start template |
| `--dir` | `string` |  | Target directory (defaults to ./<route>) |

## Output

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `app_id` | `string` | yes |  |
| `name` | `string` | yes |  |
| `route` | `string` | yes |  |
| `dir` | `string` | yes |  |
| `manual_steps` | `array` | no |  |

## Examples

```sh
# Scaffold a new app interactively
whop apps init

# Scaffold without prompts (agents: always pass --name)
whop apps init --name My Site --route my-site

# Start from another app's published source archive
whop apps init --name My Site --template app_xxxxxxxx
```

> Registers the app on Whop (claiming <route>.whop.app), scaffolds the latest TanStack Start template — or a template app's published source with --template — wires it for Whop hosting, installs dependencies, and git-inits. Then `whop apps dev` to build, `whop apps deploy` to ship.

---

# whop apps list

List apps

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--app_type` | `unknown` |  |  |
| `--company_id` | `unknown` |  |  |
| `--direction` | `unknown` |  |  |
| `--order` | `unknown` |  |  |
| `--query` | `unknown` |  |  |
| `--verified_apps_only` | `boolean` |  |  |
| `--view_type` | `unknown` |  |  |
| `--after` | `unknown` |  |  |
| `--before` | `unknown` |  |  |
| `--first` | `number` |  |  |
| `--last` | `number` |  |  |

---

# whop apps logs

List App Logs

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The ID of the app, which will look like app_*************. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--app_build_id` | `string` |  | Only return logs from this build. |
| `--level` | `string` |  | Only return console lines of this level. |
| `--query` | `string` |  | Only return logs whose message contains this text (case-insensitive). |
| `--created_after` | `string` |  | Start of the time window as an ISO 8601 timestamp. Defaults to 7 days before created_before. |
| `--created_before` | `string` |  | End of the time window as an ISO 8601 timestamp. Defaults to now. |
| `--first` | `number` |  | The number of log lines to return (max 500). |
| `--after` | `string` |  | A cursor for fetching logs after a previous page. |
| `--before` | `string` |  | A cursor for fetching logs before a later page. |

---

# whop apps permissions

Update requested permissions

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `app_id` | `string` | yes | The ID of the app the permission requirements are being updated for |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--requested_permissions` | `array` |  | The permissions that the app will request off of users when a user installs the app. |

> Confirm with the user before executing this destructive command.

---

# whop apps pull

Fetch the app's deployed source and merge it into this directory

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--app` | `string` |  | App id (defaults to the project's linked app) |
| `--build` | `string` |  | Pull this specific build's source (abld_xxx) instead of the current production build |
| `--dir` | `string` |  | Target directory (defaults to the linked project, or ./<route> on a fresh machine) |
| `--overwrite` | `boolean` |  | Skip the merge and write the archive files straight over the working tree |

## Output

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `app_id` | `string` | yes |  |
| `build_id` | `string` | no |  |
| `dir` | `string` | yes |  |
| `status` | `string` | yes |  |
| `autostash` | `string` | no |  |

## Examples

```sh
# Pull the linked app's deployed source
whop apps pull

# Get an existing app's code onto a fresh machine
whop apps pull --app app_xxxxxxxx

# Materialize a specific build's source
whop apps pull --build abld_xxxxxxxx

# Skip the merge and write the files as-is
whop apps pull --overwrite true
```

> Downloads the current production build's source archive (or --build abld_xxx for any specific build — including rollback inspection) and three-way merges it with your local code via git: a per-app snapshot ref supplies the merge base, local edits are autostashed around the merge, and conflicts surface as normal git conflict markers. On a fresh machine it creates ./<route> and becomes your working copy.

---

# whop apps secrets list

Show the app's secrets

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--app` | `string` |  | App id (defaults to the project's linked app) |

---

# whop apps secrets set

Add or overwrite secrets

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--secret` | `array` |  | KEY=VALUE pair (repeatable) |
| `--app` | `string` |  | App id (defaults to the project's linked app) |

## Examples

```sh
whop apps secrets set --secret MAIL_API_KEY=mail-key-123

whop apps secrets set --secret A=1,B=2 --app app_xxxxxxxx
```

---

# whop apps secrets unset

Delete secrets by name

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--key` | `array` |  | Secret name (repeatable) |
| `--app` | `string` |  | App id (defaults to the project's linked app) |

## Examples

```sh
whop apps secrets unset --key MAIL_API_KEY
```

---

# whop apps update

Update app

## Arguments

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `id` | `string` | yes | The unique identifier of the app to update, starting with 'app_'. |

## Options

| Flag | Type | Default | Description |
|------|------|---------|-------------|
| `--app_store_description` | `unknown` |  |  |
| `--app_type` | `unknown` |  |  |
| `--base_url` | `unknown` |  |  |
| `--dashboard_path` | `unknown` |  |  |
| `--description` | `unknown` |  |  |
| `--discover_path` | `unknown` |  |  |
| `--experience_path` | `unknown` |  |  |
| `--icon` | `unknown` |  |  |
| `--name` | `unknown` |  |  |
| `--oauth_client_type` | `unknown` |  |  |
| `--openapi_path` | `unknown` |  |  |
| `--redirect_uris` | `unknown` |  |  |
| `--required_scopes` | `unknown` |  |  |
| `--route` | `unknown` |  |  |
| `--secrets` | `unknown` |  |  |
| `--skills_path` | `unknown` |  |  |
| `--status` | `unknown` |  |  |

> Confirm with the user before executing this destructive command.
