defmodule Spellbookv4.Spells.Commands.UpdateSpell do
  alias Spellbookv4.Spells.Entities.Spell
  alias Spellbookv4.Repo

  def process(%Spell{} = spell, attrs) do
    spell
    |> Spell.changeset(attrs)
    |> Repo.update()
  end
end
