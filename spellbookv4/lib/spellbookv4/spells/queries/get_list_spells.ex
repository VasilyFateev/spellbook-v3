defmodule Spellbookv4.Spells.Queries.GetListSpells do
  alias Spellbookv4.Spells.Entities.Spell
  alias Spellbookv4.Repo

  def process do
    Repo.all(Spell)
  end
end
