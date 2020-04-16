# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :deployment_example, DeploymentExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WXZE+QrFZgW9XVlZUMmSvaorSU/Pc/r/2f3lZXFxuzagFbdOdTwEO283DeF7i6T/",
  render_errors: [view: DeploymentExampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DeploymentExample.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "Wy9gu2ts"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
