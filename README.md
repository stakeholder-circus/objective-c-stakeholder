> [!WARNING]
> This repository is AI-assisted and manually reviewed. It is local-only in the small deterministic Objective-C tranche.

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
- `./build/objective-c-stakeholder --list-values`
- `./build/objective-c-stakeholder --output-format json --focus-family code_analyzer --seed 123`

Docker is intentionally not used in this M1-safe pass; native Apple clang plus full Foundation is the validation lane.
