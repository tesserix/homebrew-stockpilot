# homebrew-stockpilot

Homebrew tap for the [StockPilot](https://stockpilot.tesserix.app) CLI
and bundled MCP server.

## Install

```bash
brew tap tesserix/stockpilot
brew install stockpilot
stockpilot --help
```

To upgrade later:

```bash
brew upgrade stockpilot
```

## What ships

`stockpilot` is the command-line client for StockPilot plus a bundled
MCP server (`stockpilot mcp serve`) that any MCP-compatible host
(Claude Desktop, Claude Code, etc.) can connect to.

Mint a personal access token at
<https://stockpilot.tesserix.app/dashboard/settings>, run
`stockpilot login`, and you're done.

Source: [tesserix/stock-analysis/cli](https://github.com/tesserix/stock-analysis/tree/main/cli).

## Releases

This formula is auto-updated by the
[`cli-release` workflow](https://github.com/tesserix/stock-analysis/blob/main/.github/workflows/cli-release.yml)
on every `cli-v*` tag pushed to `tesserix/stock-analysis`. Don't edit
`Formula/stockpilot.rb` by hand — bump deps in the source repo's
`cli/pyproject.toml` and the CI regenerates everything.
