defmodule Spellbookv4.Spells.Commands.DeleteSpell do
  alias Spellbookv4.Spells.Entities.Spell
  alias Spellbookv4.Repo

  def process(%Spell{} = spell) do
    Repo.delete(spell)
  end
end
