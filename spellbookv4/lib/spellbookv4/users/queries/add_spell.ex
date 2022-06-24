defmodule Spellbookv4.Users.Queries.AddSpell do
  alias Spellbookv4.Users.Entities.User
  alias Spellbookv4.Repo

  def process(%User{} = user, attrs) do
    user
    |> User.add_spell_changeset(attrs)
    |> Repo.update()
  end
end
