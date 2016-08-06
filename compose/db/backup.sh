#!/bin/bash
set -e

if [ "$POSTGRES_USER" == "postgres" ]
then
    echo "Must be a user other than 'postgres' to run backups"
    exit 1
fi

export PGPASSWORD=$POSTGRES_PASSWORD

FNAME=backup_$(date +'%Y_%m_%dT%H_%M_%S').sql
pg_dump -h postgres -U $POSTGRES_USER >> /backups/$FNAME

echo "successfully created backup $FNAME"
exit 0
