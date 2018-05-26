use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :discipline, DisciplineWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :discipline, Discipline.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("POSTGRES_USER"),
  password: System.get_env("POSTGRES_PASSWORD"),
  database: "discipline_test",
  hostname: System.get_env("POSTGRES_HOST"),
  port: System.get_env("POSTGRES_PORT"),
  pool: Ecto.Adapters.SQL.Sandbox
