# Fix Detached HEAD Safely

If you made commits while in a detached HEAD state, create a branch immediately:

```bash
git switch -c fix-detached-head
```

If you only want to keep the working tree changes and not preserve the current HEAD as a named branch, switch to an existing branch and cherry-pick or stash as needed.
