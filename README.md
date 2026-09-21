# Homebrew cask for Debrify

Installs the latest pre-release version of [Debrify](https://github.com/varunsalian/debrify). Note: debrify releases unsigned dmg files, so you may have to trust the app when you install/update it.

## Install:

```
brew tap tyler3650/debrify
brew trust tyler3650/debrify
brew install debrify
```

## Update:

```
brew update && brew upgrade debrify
```

## Uninstall:

```
brew uninstall debrify --zap
brew untap tyler3650/debrify
```