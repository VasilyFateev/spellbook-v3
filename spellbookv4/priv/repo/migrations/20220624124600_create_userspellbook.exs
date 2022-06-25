defmodule Spellbookv4.Repo.Migrations.CreateUserSpellbook do
  use Ecto.Migration

  def change do
    create table(:user_spellbooks) do
      add :user_id, references(:users)
      add :spell_id, references(:spells)

      timestamps()
    end

    create unique_index(:user_spellbooks, [:user_id, :spell_id])
  end
end
