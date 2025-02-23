#!/bin/bash

export PATH=/home/rizal/.nvm/versions/node/v20.17.0/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/rizal/.local/share/bin
nohup kitty --hold -e bash -c "webtorrent --mpv \"$1\" --on-exit \"rm -rf /tmp/webtorrent/*\""
