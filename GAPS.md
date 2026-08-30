# Gaps

## Closed in this tranche

- Scaffold-only status replaced with a native Objective-C deterministic CLI.
- Dedicated `classic-six + modern-core` families implemented.
- Later families use explicit grouped fallback renderers.
- Experimental provider flags fail fast.
- Remote native, contract, dependency, and workflow-security CI is implemented.

## Remaining gaps

- Linux Docker execution is unsupported because the validated implementation links Apple Foundation. The native macOS lane is authoritative.
- Full live-provider/runtime support is deferred to the provider rollout wave.
- Required-check binding waits for the first stable hardened CI pass.
