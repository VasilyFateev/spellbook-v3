defmodule Spellbookv4.Relation.SpellsToUser do
  use Ecto.Schema

  alias Spellbookv4.Users.Entities.User
  alias Spellbookv4.Spells.Entities.Spell

  @primary_key false
  schema "spells_in_user" do
    belongs_to :users, User
    belongs_to :spell, Spell

    # Added bonus, a join schema will also allow you to set timestamps
    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> Ecto.Changeset.cast(params, [:user, :spell_id])
    |> Ecto.Changeset.validate_required([:user, :spell_id])
  end
end
