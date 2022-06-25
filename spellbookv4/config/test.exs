import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :spellbookv4, Spellbookv4.Repo,
  username: "drovosek",
  password: "123",
  hostname: "localhost",
  database: "spellbookv4_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :spellbookv4, Spellbookv4Web.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "k+KZTc73cbpzjYPqJgoM/ShRJVFKFGymtRoEDlc8kDLGVI6VfTyPMsv3YOZW++1J",
  server: false

# In test we don't send emails.
config :spellbookv4, Spellbookv4.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
