defmodule Spellbookv4.Sources.Entities.Source do
  alias Spellbookv4.Spells.Entities.Spell
  use Ecto.Schema

  import Ecto.Changeset

  @required [:name]

  schema "sources" do
    field :name, :string

    has_many :spells, Spell

    timestamps()
  end

  def changeset(%__MODULE__{} = source, attrs) do
    source
    |> cast(attrs, @required)
    |> validate_format(:name, ~r/^[a-zA-Z]*$/, message: "Invalid input format.")
    |> unique_constraint(:source, message: "Such a source has already been added.")
  end

end
