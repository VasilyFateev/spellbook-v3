defmodule Spellbookv4.Users.Entities.User do
  alias Spellbookv4.Spells.Entities.Spell
  use Ecto.Schema

  import Ecto.Changeset

  alias Spellbookv4.Repo

  @required [:email, :password]

  schema "users" do
    field :email, EmailEctoType
    field :password, :string, virtual: true
    field :password_hash, :string
    field :login, :string

    many_to_many :spells, Spell, join_through: Spellbookv4.Relation.SpellsToUser

    timestamps()
  end

  def changeset(%__MODULE__{} = user, attrs) do
    user
    |> cast(attrs, @required)
    |> validate_required(@required)
    |> unique_constraint(:email, message: "taken")
    |> validate_format(:password, ~r/^(?=.*\d)(?=.*[a-z])(?=.*[a-zA-Z]).{8,}/,
      message: "invalid_format"
    )
    |> put_password_hash()
  end

  def add_spell_changeset(%__MODULE__{} = user, attrs) do
    user
    |> Repo.preload(:spells)
    |> Ecto.Changeset.change()
    |> put_assoc(:spells, attrs.spells)
  end

  defp put_password_hash(%{valid?: true, changes: %{password: password}} = changeset) do
    change(changeset, Argon2.add_hash(password))
  end

  defp put_password_hash(changeset), do: changeset
end
