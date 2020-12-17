# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :jtfparty,
  ecto_repos: [Jtfparty.Repo]

# Configures the endpoint
config :jtfparty, JtfpartyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QdDZnMZuw3mfZde/qk636jy8aI7LV6KKMIiyzL36Tzi4dSyImkf+7vO1U8Dr8NmW",
  render_errors: [view: JtfpartyWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Jtfparty.PubSub,
  live_view: [signing_salt: "HeSrTfsP"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
