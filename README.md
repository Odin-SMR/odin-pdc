# odin-pdc

At PDC all odin products are stored for safe backup. This is also the
Odin project's official product store.

## Access with ssh

    kinit -f <user>@NADA.KTH.se
    ssh -o GSSAPIAuthentication=yes \
        -o GSSAPIKeyExchange=yes \
        -o GSSAPIDelegateCredentials=yes \
        <user>@esrange.pdc.kth.se

## Reference configuration and installation on debian

Described in [Dockerfile](Dockerfile)

## Processes running at PDC

A crontab scripts upload all changed L0 files to a bucket.