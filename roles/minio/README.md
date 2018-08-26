# Minio role

This role provides an easy to use and extend automated setup of S3 compatible object storage.

Since minio only support single-tenant per instance, providing one instance per use-case is the way to go.

It also helps to scale minio in the future. Simply move from group_vars to host vars and distribute your data this way.

Details about multi-tenant support in minio:
https://docs.minio.io/docs/multi-tenant-minio-deployment-guide.html

## Example config:

`group_vars/minio`:

```yaml
---
minio_domain: minio.example.com
minio_users:
  codimd:
    access_key: EXAMPLEgVfvsmjz4KG5tEXAMPLE
    secret_key: EXAMPLEPlTMWneuixqzJDjqTAQSjJgLw92CCgTUf2Hkq9QFq6vMVsHel7EXAMPLE
    browser: "on"
```
