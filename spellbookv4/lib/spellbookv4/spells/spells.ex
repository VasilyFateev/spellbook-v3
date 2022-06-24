defmodule Spellbookv4.Spells do
  alias Spellbookv4.Spells.Commands.{
    CreateSpell,
    DeleteSpell,
    UpdateSpell
  }

  alias Spellbookv4.Spells.Queries.{
    GetSpell,
    GetListSpells
  }

  # Commands
  defdelegate create_spell(attrs), to: CreateSpell, as: :process
  defdelegate delete_spell(spell), to: DeleteSpell, as: :process
  defdelegate update_spell(spell, attrs), to: UpdateSpell, as: :process

  # Queries
  defdelegate get_spell(id), to: GetSpell, as: :process
  defdelegate get_list_spells(), to: GetListSpells, as: :process
end
