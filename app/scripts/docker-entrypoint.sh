#!/bin/sh

set -e

if [ "$DATABASE" = "postgres" ]
then
    echo "Waiting for postgres..."

    while ! nc -z $SQL_HOST $SQL_PORT; do
      sleep 0.1
    done

    echo "PostgreSQL started"
fi

cd $HOME \
  && mix local.hex --force \
  && mix deps.get
cd $HOME/assets \
  && npm install \
  && node node_modules/webpack/bin/webpack.js --mode development
cd $HOME \
  && mix ecto.create \
  && mix ecto.migrate \
  && mix run priv/repo/seeds.exs \
  && mix phx.server

exec "$@"
