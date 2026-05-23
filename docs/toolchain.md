# Toolchain

Objective-C native validation uses Apple clang and Foundation on arm64 macOS.

## Proven commands

- `clang --version`
- `make compiler-proof`
- `make test`

No Homebrew, Docker, Nix, or package-manager dependency is required. Foundation is linked from the native Apple SDK for the current deterministic first tranche.
