# aflock-ai Homebrew tap

Homebrew formulae for [`cilock`](https://cilock.dev) and `jctl`.

## Install

```sh
brew install aflock-ai/tap/cilock      # pipeline observer / supply-chain evidence collector (Apache-2.0)
brew install aflock-ai/tap/jctl        # TestifySec Judge platform CLI (proprietary)
```

Or:

```sh
brew tap aflock-ai/tap
brew install cilock
brew install jctl
```

Upgrade with `brew upgrade cilock` / `brew upgrade jctl`.

## What you get

Prebuilt binaries for macOS (Intel + Apple Silicon) and Linux (x86_64 + arm64),
pulled from <https://cilock.dev> (Cloudflare R2). Homebrew pins each download by
SHA-256, so the tap commit is the trust anchor for the install.

`cilock` is open source (Apache-2.0); `jctl` is TestifySec proprietary software,
freely redistributable and distributed here via this custom tap.

## Verifying provenance (optional)

Every release also publishes signed in-toto/DSSE attestations and a Verification
Summary Attestation (VSA) next to each tarball on cilock.dev. To verify a download
independently of Homebrew:

```sh
cilock verify <path-to-binary> \
  -a cilock-<ver>-<os>-<arch>.source-git.att.json \
  -a cilock-<ver>-<os>-<arch>.build.att.json \
  --platform-url ""
```

## Maintenance

Formulae are **auto-bumped** on each release by the `brew-bump` job in the
TestifySec Judge release pipeline (`release-fanout` workflow), which verifies the
release attestation, computes the per-arch SHA-256s, and pushes the updated
formula here. Manual edits are normally unnecessary.
