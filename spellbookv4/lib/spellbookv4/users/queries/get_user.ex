defmodule Spellbookv4.Users.Queries.GetUser do
  alias Spellbookv4.Users.Entities.User
  alias Spellbookv4.Repo

  def process(id) do
    Repo.find(User, id)
  end
end
