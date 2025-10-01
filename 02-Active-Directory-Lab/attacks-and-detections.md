# Attacks & Detections

## Password Spraying (T1110)
- Generate failed logons from Kali → observe 4625 events → SIEM correlation.

## Kerberoasting (T1558.003)
- Enumerate SPNs → request TGS → offline crack → unusual 4769 patterns.

## Suspicious PowerShell (T1059.001)
- Use download cradle → Sigma rule match on `Invoke-WebRequest`.

## Credential Dump Attempts (T1003)
- Attempt LSASS access → Sysmon Event ID 10 / Security logs → validate detection.
