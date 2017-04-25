# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :discuss,
  ecto_repos: [Discuss.Repo]

# Configures the endpoint
config :discuss, Discuss.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "CftNO4w1+wdyUvKg1q4ZLbGW8yrxd2xrCN2M28TLw5b3tSOXXREIgoJ8salMUECt",
  render_errors: [view: Discuss.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Discuss.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Ueberauth
config :ueberauth, Ueberauth,
	providers: [
		github: {Ueberauth.Strategy.Github, []}
	]

# Ueberauth Github
config :ueberauth, Ueberauth.Strategy.Github.OAuth,
	client_id: "a4c86c039a5ef84bb697",
	client_secret: "b44aa75f1ffaeb4e84d2829b9db0d37d6735605f"
