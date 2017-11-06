# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :buddy_abroad,
  ecto_repos: [BuddyAbroad.Repo]

# Configures the endpoint
config :buddy_abroad, BuddyAbroadWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dVxmSBPKaReoqn1+GQZjHTWzSHljHBVHL2BwTGMpoh8rV3KBYSY6IZp0NvhdrDDn",
  render_errors: [view: BuddyAbroadWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BuddyAbroad.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
