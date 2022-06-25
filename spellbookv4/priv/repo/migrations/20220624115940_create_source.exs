defmodule Spellbookv4.Repo.Migrations.CreateSource do
  use Ecto.Migration

  def change do
    create table(:sources) do
      add :name, :string, null: false

      timestamps()
    end

    create unique_index(:sources, [:name])
  end
end
