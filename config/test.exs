use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :event_source, EventSource.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :event_source, EventSource.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "tobyhede",
  password: "",
  database: "event_source_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
