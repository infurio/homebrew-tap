# ContextHop for Homebrew

ContextHop (`chop`) manages Google Cloud identities, projects, Kubernetes targets,
and Docker contexts in isolated terminal sessions.

## Install

```sh
brew install infurio/tap/contexthop
chop help
```

Prebuilt binaries are available for macOS on Apple Silicon/ARM64. Install the provider tools you use (`gcloud`, `kubectl`, or Docker)
separately. Zsh provides the managed shell integration.

## Start

From a fresh terminal, import your existing local configuration and open the app:

```sh
chop init --write
chop
```

For an existing catalog, preview `chop discover` and apply with
`chop discover --write`. Accounts are imported as metadata; use
`chop auth <identity>` when an isolated login is needed.

Select resources with Enter or Space, use `d` for discovery, and press `s` to
review the context and start an isolated shell. `exit` returns to the parent.
To enable switching in the current Zsh shell:

```zsh
eval "$(chop shell-init zsh --in-place)"
```

## Upgrade

```sh
brew update
brew upgrade infurio/tap/contexthop
```

Exit managed shells before upgrading, then open a fresh terminal.

## Releases

[Release downloads](https://github.com/infurio/homebrew-tap/releases) contain the
same `chop` binaries used by the formula, with SHA-256 checksums. The tap hosts
binary distributions; the application source is maintained separately.
