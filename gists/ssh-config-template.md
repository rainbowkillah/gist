# SSH Config Template

Add to `~/.ssh/config`:

```sshconfig
Host github
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_ed25519
  IdentitiesOnly yes
```
