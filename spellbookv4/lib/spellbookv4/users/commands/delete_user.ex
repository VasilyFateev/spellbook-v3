defmodule Spellbookv4.Users.Commands.DeleteUser do
  alias Spellbookv4.Users.Entities.User
  alias Spellbookv4.Repo

  def process(%User{} = user) do
    Repo.delete(user)
  end
end
