# Check Open Ports

## Linux

```bash
ss -tulnp
```

## macOS

```bash
lsof -i -P -n
```

## Windows PowerShell

```powershell
Get-NetTCPConnection | Sort-Object LocalPort
```
