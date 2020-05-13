#!/bin/sh

amixer sset Master $1
amixer sset Master on
$SCRIPTS/notify.sh "$(amixer get Master | tail -1 | awk '$0~/%/{print $5}' | tr -d '[]')"
