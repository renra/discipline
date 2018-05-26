use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :discipline, DisciplineWeb.Endpoint,
  secret_key_base: "Fq8v1TDQmaaKy65NJ5sHICkBUm/MHUmsYAAVgSwS/zZ+n42jYqfdXtFE4N3uoqyy"

# Configure your database
config :discipline, Discipline.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("POSTGRES_USER"),
  password: System.get_env("POSTGRES_PASSWORD"),
  database: "discipline_prod",
  hostname: System.get_env("POSTGRES_HOST"),
  port: System.get_env("POSTGRES_PORT"),
  pool_size: 15
