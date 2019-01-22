# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :skillset,
  ecto_repos: [Skillset.Repo]

# Configures the endpoint
config :skillset, SkillsetWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7KPXE5V6wJr1bHJycGjKECBtekoV9jAg1E4EBz9xPTmpp7dOCityfo/Mc5LgOggD",
  render_errors: [view: SkillsetWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Skillset.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
