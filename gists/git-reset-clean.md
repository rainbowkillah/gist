# Hard Reset and Clean a Repository

Use this only if you are certain you want to discard local changes.

```bash
git reset --hard HEAD
git clean -fd
```

Also remove ignored files:

```bash
git clean -fdx
```
