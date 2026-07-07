# Whop CLI

`whop` — sell on Whop from your terminal. Create products, set pricing, and get a shareable checkout link without leaving your shell.

## Installation

```bash
# macOS / Linux
curl -fsSL https://whop.com/install.sh | sh

# Homebrew
brew install whopio/tap/whop

# npm (requires Node.js >= 22)
npm install -g @whop/cli
```

Prebuilt binaries cover macOS and Linux ([releases](https://github.com/whopio/whop-public-cli/releases)); on other platforms, use npm.

## Getting started

```bash
whop
```

That's it — it signs you in and walks you to a shareable checkout link.

## Usage

```bash
whop --help                  # all commands
whop products list           # what you're selling
whop plans create --help     # options for any command
whop stats list              # your numbers
```

Every command takes `--format json` for structured output.

## For AI agents

The CLI is self-describing — agents can discover and drive every command:

```bash
whop --llms          # machine-readable manifest of all commands
whop mcp add         # register as an MCP server (e.g. Claude Desktop)
whop skills add      # generate agent skills
```

Set `WHOP_API_KEY` for non-interactive use (create one under **Developer → API keys**).

## Updating

The CLI keeps itself up to date. To update manually, run `whop upgrade`.

## Documentation

- [Whop developer docs](https://docs.whop.com)
- [whop.com/developers](https://whop.com/developers/)
- Bugs and feature requests: [issues](https://github.com/whopio/whop-public-cli/issues)
