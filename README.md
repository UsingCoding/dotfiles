# Dotfiles repo

## Opentofu managed

Several things (like apps) managed by [OpenTofu](https://opentofu.org) at [apps.tf](apps.tf)

Prepare tofu
```
tofu init
```

Apply state
```
# use -parallelism=1 to avoid lock concurrency at go source code and e.t.c.
tofu apply -parallelism=1
```