#!/bin/sh

#cd api && \
#  mix ecto.create && \
#  mix ecto.migrate && \
#  mix test && \
#  mix phx.server
cd $HOME \
  && mix deps.get
cd $HOME/assets \
  && npm install \
  && node node_modules/webpack/bin/webpack.js --mode development
cd $HOME \
  && mix ecto.create \
  && mix ecto.migrate \
  && mix phx.server

#cd api && \
#  mix ecto.create && \
#  mix ecto.migrate && \
#  mix phx.gen.json \
#    Chat Group groups name:string && \
#  mix ecto.migrate
