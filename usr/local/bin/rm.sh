#!/bin/sh
#Carelessness protection

echo "[!!] Removing: ${*}" >&2
read -rp '> Hit ^C to cancel'
/bin/rm "${@}"
