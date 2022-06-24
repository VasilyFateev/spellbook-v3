defmodule Spellbookv4.Repo.Migrations.CreateSpell do
  use Ecto.Migration

  def change do
    create table(:spells) do
      add :name, :string, null: false
      add :level, :integer
      add :casting_time, :string, null: false
      add :range, :string, null: false
      add :components, :string, null: false
      add :duration, :string, null: false
      add :description, :string

      add :school_id, references(:schools)
      add :source_id, references(:sources)

      timestamps()
    end

    create unique_index(:spells, [:name])
  end
  end
end
