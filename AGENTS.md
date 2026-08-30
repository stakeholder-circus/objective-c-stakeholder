# objective-c-stakeholder AGENTS

- Preserve imported Rust history and provenance.
- Current phase target: Foundation-backed deterministic `classic-six + modern-core` with grouped fallback for later families.
- CLI contract: `--list-values`, `--focus-family`, `--output-format`, `--seed`, and explicit `--experimental-provider` fail-fast.
- Apple clang plus Foundation on macOS is the authoritative native lane.
- Linux Docker is explicitly unsupported for the Foundation lane; never report the fail-fast Dockerfile as a passing runtime gate.
- Missing behavior must fail fast and remain documented in `GAPS.md`.
- Full live-provider/runtime support remains a required second-pass wave.

## Validation commands

- `python3 scripts/validate_scaffold.py`
- `make compiler-proof`
- `make test`
- `clang --analyze -std=c17 -ObjC -Wall -Wextra -pedantic src/main.m -framework Foundation`
