defmodule Spellbookv4.Users.Commands.UpdateUser do
  alias Spellbookv4.Users.Entities.User
  alias Spellbookv4.Repo

  def process(%User{} = user, attrs) do
    user
    |> User.changeset(attrs)
    |> Repo.update()
  end
end
