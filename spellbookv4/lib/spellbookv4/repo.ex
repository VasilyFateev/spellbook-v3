defmodule Spellbookv4.Repo do
  use Ecto.Repo,
    otp_app: :spellbookv4,
    adapter: Ecto.Adapters.Postgres
end
