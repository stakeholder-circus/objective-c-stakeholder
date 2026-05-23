# Toolchain

Objective-C native validation uses Apple clang on arm64 macOS.

## Proven commands

- `clang --version`
- `make compiler-proof`
- `make test`

No Homebrew, Docker, Nix, Cocoa/Foundation, or package-manager dependency is required for the current deterministic first tranche.
