#!/bin/bash

ls
mkdir alistdir
mv alist alistdir
./alistdir/alist start

chown -R ${PUID}:${PGID} /root/.synctv

umask ${UMASK}

exec su-exec ${PUID}:${PGID} synctv --env-no-prefix $@
