defmodule Spellbookv4.Spells.Commands.CreateSpell do
  alias Spellbookv4.Spells.Entities.Spell
  alias Spellbookv4.Repo

  def process(attrs) do
    %Spell{}
    |> Spell.changeset(attrs)
    |> Repo.insert()
  end
end
