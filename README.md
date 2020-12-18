# Jtfparty

## Requirement

* postgresql
* elixir, erlang (see. `mix.exs` )

## Setup

```
$ git clone https://github.com/youknowcast/jtfparty.git
$ cat app/.env.tmpl > app/.env
$ cat db/.env.tmpl > db/.env
$ make rebuild  # docker-compose up -d --build

# How to use Makefile 
$ make help
up                   docker-compose up -d
ps                   docker-compose ps
logs                 docker-compose logs
down                 docker-compose down -v
stop                 docker-compose stop
rebuild              docker-compose up -d --build
app                  docker-compose exec app /bin/bash
db                   docker-compose exec db /bin/bash
logapp               docker-compose logs app
logdb                docker-compose logs db
curl                 curl -I http://localhost:4000
```

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
