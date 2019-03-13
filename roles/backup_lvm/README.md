Backup LVM
===

This role provides an easy way to create consistent backups of LVM volumes using LVM snapshots and duplicity.

Usage
---

Before using this module you need to [generate a GPG key](https://fedoraproject.org/wiki/Creating_GPG_Keys) on your server, which I recommend to only use on this server. This key will be used to sign and encrypt your backups. So make sure you [store a copy of this key (including the private key)](https://fedoraproject.org/wiki/Creating_GPG_Keys#Making_a_Key_Backup_Using_the_Command_Line) in your password store. You'll need it to recover your backups.

*The reason to use the same key for encryption and signing instead of using it just for signing and encrypting it with key that is kept secret from the server is that in case of recovery you need to share this key with the server anyway, so why bother with that?*

Now create a host configuration in `host_vars/<servername>` that looks like this:

```yaml
---
backup_vols:
  - vg_name: "<your vg>"
    lv_name: "<your volume to backup>"
  - vg_name: "<same or another vg>"
    lv_name: "<another volume to backup>"

backup_target: "<your backup target>"

backup_gpg:
  id: <your gpg key id>
  passphrase: "<your gpg key's passphrase>"
```

How this module works
---

1. It create a snapshot of the LVM volumes specified
2. It mounts the snapshot under `/backup_snapshots/<volume_name>`
3. It runs duplicity on this snapshot and creates a backup this way (it'll create a full backup once a month)
4. It unmounts the snapshots
5. It deletes the snapshots

How to restore
---

To restore simply use the duplicity commands:

```shell
duplicity restore -t "<time for restore>" "<your backup target>" /backup_snapshots/<volume_name>
```

*More detailed usage can be found in the [duplicity man page](http://duplicity.nongnu.org/duplicity.1.html)*
