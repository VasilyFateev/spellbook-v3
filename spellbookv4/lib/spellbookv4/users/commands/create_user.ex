defmodule Spellbookv4.Users.Commands.CreateUser do
  alias Spellbookv4.Users.Entities.User
  alias Spellbookv4.Repo

  def process(attrs) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end
end
