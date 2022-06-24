defmodule Spellbookv4.Spells.Queries.GetSpell do
  alias Spellbookv4.Spells.Entities.Spell
  alias Spellbookv4.Repo

  def process(id) do
    Repo.find(Spell, id)
  end
end
