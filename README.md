# Homebrew tap for Debrify

Installs the latest pre-release version of [Debrify](https://github.com/varunsalian/debrify) via homebrew.

## Install

```bash
brew tap tyler3650/debrify && brew trust tyler3650/debrify && brew install --cask debrify
```

## Update

```bash
brew update && brew upgrade --cask debrify
```

## Uninstall

```bash
brew uninstall --cask debrify --zap && brew untrust tyler3650/debrify && brew untap tyler3650/debrify
```