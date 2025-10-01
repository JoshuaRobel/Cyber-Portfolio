# Sigma Rules — Custom Detections

## Goals
- Author Sigma rules for key techniques used in the labs.
- Validate rules against sample logs and map to ATT&CK.

## Structure
- `/rules/` (optional) or rules at repo root of this folder.
- This README documents rule intent, fields used, test steps, and caveats.

## Example Rule Template
See `examples/windows_powershell_suspicious_download.yml` for a starting point.

## Validation
- Convert Sigma to backend (e.g., Elastic) with `sigmac` or `sigma-cli`.
- Test against collected logs; screen-cap matching alerts.
