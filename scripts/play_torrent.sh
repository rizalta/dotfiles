#!/bin/bash

kitty -e bash -c "webtorrent --mpv \"$1\" --on-exit \"rm -rf /tmp/webtorrent/*\""
