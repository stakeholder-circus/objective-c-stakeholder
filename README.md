> [!WARNING]
> This repository is AI-assisted and manually reviewed. Its deterministic Objective-C tranche is published with explicit validation evidence.

# objective-c-stakeholder

Objective-C Foundation implementation of the stakeholder deterministic first tranche.

## Current tranche

- Foundation-backed full dedicated `classic-six + modern-core` generator families.
- Grouped fallback for later generator families.
- Deterministic normalized JSON with same-seed stability.
- `--list-values`, `--focus-family`, `--output-format`, `--seed`, and explicit `--experimental-provider` fail-fast.
- Full live-provider/runtime support remains deferred to the later provider wave.

## Commands

- `python3 scripts/validate_scaffold.py`
- `make compiler-proof`
- `make test`
- `clang --analyze -std=c17 -ObjC -Wall -Wextra -pedantic src/main.m -framework Foundation`
- `./build/objective-c-stakeholder --list-values`
- `./build/objective-c-stakeholder --output-format json --focus-family code_analyzer --seed 123`

GitHub CI runs the contract check, Foundation build/tests, Clang Static Analyzer,
dependency review, actionlint, and workflow-security analysis. The fail-fast
Dockerfile records that Apple Foundation is not a Linux container runtime lane.
