# AGENTS.md

For card work, use Mr. Moto's `mr` CLI: run `mr card claim <CARD>` and follow its output, and see `mr --help` for the rest.

This repository is the Homebrew tap `grahamotte/tap`. Users install its casks with `brew install grahamotte/tap/<token>` and update them with `brew upgrade`.

## Casks

- `Casks/<token>.rb` holds one cask per app.
- Code Moto apps that set `apps.homebrew` in their `config.json` publish their cask here. After `mise publish` uploads an app's notarized release zip, Code Moto's `CaskPatch` generates the cask with that release's version and SHA-256, and `mr cask` commits it straight to `main` only when it changed. These publish commits are the only changes made outside the PR flow.
- Do not hand-edit a published app's cask; the next release overwrites it. Change the app's `apps.homebrew` configuration or Code Moto's `CaskPatch`, then publish the app.

## Rules

1. All other changes to tracked files need a PR, pushed with `mr push` and opened with `mr pr create`. Never commit to or push `main` yourself.
2. Work from `origin/main`.
3. Run `mise test` before every PR. It runs `brew style` on every cask.
4. `brew audit --cask --online grahamotte/tap/<token>` checks a published cask against its release download.
5. `AGENTS.md` is the only agent-instruction file.
