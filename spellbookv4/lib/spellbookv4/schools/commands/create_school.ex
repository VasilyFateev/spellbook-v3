defmodule Spellbookv4.Schools.Commands.CreateSchool do
  alias Spellbookv4.Schools.Entities.School
  alias Spellbookv4.Repo

  def process(attrs) do
    %School{}
    |> School.changeset(attrs)
    |> Repo.insert()
  end
end
