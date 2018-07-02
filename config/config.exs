# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :sprint_planning,
  ecto_repos: [SprintPlanning.Repo]

# Configures the endpoint
config :sprint_planning, SprintPlanningWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6fwkE47KjbmEIrSlfjaFP0sz/5BW1tAr2ypKCzSrYa/Pw+TfgK6z7jDzpXaD+++s",
  render_errors: [view: SprintPlanningWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SprintPlanning.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
