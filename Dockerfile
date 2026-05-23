# Docker validation is intentionally deferred for this M1-safe local Objective-C tranche.
# The native validation lane uses Apple clang on macOS.
FROM alpine:3.20
CMD ["sh", "-c", "echo 'Docker validation deferred for objective-c-stakeholder'; exit 1"]
