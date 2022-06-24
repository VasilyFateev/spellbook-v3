defmodule Spellbookv4.Repo.Migrations.CreateSource do
  alias Spellbookv4.Spells.Entities.Spell
  use Ecto.Migration

  def change do
    create table(:sources) do
      add :name, :string, null: false

      has_many :spells, Spell

      timestamps()
    end

    create unique_index(:sources, [:name])
  end
  end
end
