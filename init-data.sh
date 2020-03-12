#!/bin/sh

HOST="$1"
DATA_SRC=/docker-entrypoint-initdb.d

/cockroach/cockroach.sh init --host "$HOST" --insecure

for sql in "$DATA_SRC"/*.sql; do
   cat "$sql" | /cockroach/cockroach.sh sql --host "$HOST" --insecure
done

exit 0
