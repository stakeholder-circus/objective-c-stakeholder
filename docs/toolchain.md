# Toolchain

Objective-C native validation uses Apple clang and Foundation on arm64 and GitHub-hosted macOS.

## Proven commands

- `clang --version`
- `make compiler-proof`
- `make test`
- `clang --analyze -std=c17 -ObjC -Wall -Wextra -pedantic src/main.m -framework Foundation`

No Homebrew, Docker, Nix, or package-manager dependency is required. Foundation
is linked from the native Apple SDK. Ubuntu is used only for contract,
dependency, and workflow-security checks.
