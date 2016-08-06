#!/bin/bash

# set default postgres user, just in case
if [[ -z "$POSTGRES_USER" ]]; then
  export POSTGRES_USER=postgres
fi

export DATABASE_URL=postgres://$POSTGRES_USER:$POSTGRES_PASSWORD@db:5432/$POSTGRES_USER
exec "$@"
