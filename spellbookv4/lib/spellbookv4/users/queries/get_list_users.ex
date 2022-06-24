defmodule Spellbookv4.Users.Queries.GetListUsers do
  alias Spellbookv4.Users.Entities.User
  alias Spellbookv4.Repo

  def process do
    Repo.all(User)
  end
end
