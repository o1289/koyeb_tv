#!/bin/bash

chmod +x alist
mv alist ..
../alist start

chown -R ${PUID}:${PGID} /root/.synctv

umask ${UMASK}

exec su-exec ${PUID}:${PGID} synctv --env-no-prefix $@
