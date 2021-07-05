#!/bin/bash

mkdir -p /var/run/sshd

chown -R root:root /root
mkdir -p /root/.config/pcmanfm/LXDE/
cp /usr/share/doro-lxde-wallpapers/desktop-items-0.conf /root/.config/pcmanfm/LXDE/

if [ -n "$VNC_PASSWORD" ]; then
    echo -n "$VNC_PASSWORD" > /.password1
    x11vnc -storepasswd $(cat /.password1) /.password2
    chmod 400 /.password*
    sed -i 's/^command=x11vnc.*/& -rfbauth \/.password2/' /etc/supervisor/conf.d/lxde.conf
    export VNC_PASSWORD=
fi

# cd /usr/lib/web && ./run.py > /var/log/web.log 2>&1 &
# nginx -c /etc/nginx/nginx.conf
# https://mrlichangming.github.io/2018/09/20/docker%E4%B8%AD%E4%BD%BF%E7%94%A8supervisor%E7%AE%A1%E7%90%86%E8%BF%9B%E7%A8%8B/
exec /usr/bin/tini -- /usr/bin/supervisord -n
