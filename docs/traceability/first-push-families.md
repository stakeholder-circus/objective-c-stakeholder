# First push families

This tranche ports the deterministic family-focus contract from the C-family small-runtime pattern into Objective-C.

| Family group | Objective-C path | Source reference | Parity class |
| --- | --- | --- | --- |
| classic-six | `src/main.m` | `c-stakeholder/src/main.c` family registry and CLI shape | dedicated |
| modern-core | `src/main.m` | `c-stakeholder/src/main.c` family registry and CLI shape | dedicated |
| later families | `src/main.m` | `c-stakeholder/src/main.c` grouped fallback shape | grouped fallback |
| CLI contract | `src/main.m`, `tests/test_cli.sh` | `c-stakeholder/tests/test_cli.sh` smoke contract | deterministic |
| experimental provider | `src/main.m`, `tests/test_cli.sh` | fail-fast provider policy in current deterministic repos | explicit fail-fast |

Rust and Java remain canonical behavioral anchors; this Objective-C tranche is published and Foundation-native validated.
