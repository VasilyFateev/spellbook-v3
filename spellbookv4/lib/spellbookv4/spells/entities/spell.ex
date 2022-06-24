defmodule Spellbookv4.Spells.Entities.Spell do
  alias Spellbookv4.Schools.Entities.School
  alias Spellbookv4.Sources.Entities.Source
  alias Spellbookv4.Users.Entities.User
  use Ecto.Schema

  import Ecto.Changeset

  @required [:name]

  schema "spells" do
    field :name, :string
    field :level, :integer
    field :casting_time, :string
    field :range, :string
    field :components, :string
    field :duration, :string
    field :description, :string

    belongs_to :school_id, School
    belongs_to :source_id, Source

    many_to_many :users, User, join_through: "user_spellbooks"

    timestamps()
  end

  def changeset(%__MODULE__{} = school, attrs) do
    school
    |> cast(attrs, @required)
    |> validate_format(:name, ~r/^[a-zA-Z]*$/, message: "Invalid input format.")
    |> validate_format(:casting_time, ~r/^[a-zA-Z]*$/, message: "Invalid input format.")
    |> validate_format(:range, ~r/^[a-zA-Z]*$/, message: "Invalid input format.")
    |> validate_format(:components, ~r/^[a-zA-Z]*$/, message: "Invalid input format.")
    |> validate_format(:duration, ~r/^[a-zA-Z]*$/, message: "Invalid input format.")
    |> validate_format(:description, ~r/^[a-zA-Z]*$/, message: "Invalid input format.")

    |> validate_number(:level, greater_than: 0, less_than: 9, message: "Invalid input format.")

    |> assoc_constraint(:school_id)
    |> assoc_constraint(:source_id)

    |> unique_constraint(:school, message: "Such a school has already been added.")
  end
end
