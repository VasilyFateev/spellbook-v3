defmodule Spellbookv4.Schools.Commands.UpdateSchool do
  alias Spellbookv4.Schools.Entities.School
  alias Spellbookv4.Repo

  def process(%School{} = school, attrs) do
    school
    |> School.update_changeset(attrs)
    |> Repo.update()
  end
end
