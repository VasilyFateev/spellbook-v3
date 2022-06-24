defmodule Spellbookv4.Schools.Entities.School do
  #alias Spellbookv4.Spells.Entities.Spell
  use Ecto.Schema

  import Ecto.Changeset

  @required [:name]

  schema "schools" do
    field :name, :string

    #has_many :spells, Spell

    timestamps()
  end

  def create_changeset(%__MODULE__{} = school, attrs) do
    school
    |> cast(attrs, @required)
    |> validate_format(:name, ~r/^[a-zA-Z]*$/, message: "Invalid input format.")
    |> unique_constraint(:school, message: "Such a school has already been added.")
  end

  def update_changeset(%__MODULE__{} = school, attrs) do
    school
    |> cast(attrs, @required)
    |> validate_format(:name, ~r/^[a-zA-Z]*$/, message: "Invalid input format.")
    |> unique_constraint(:school, message: "Such a school has already been added.")
  end

end
