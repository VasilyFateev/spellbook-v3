defmodule Spellbookv4.Schools.Commands.DeleteSchool do
  alias Spellbookv4.Schools.Entities.School
  alias Spellbookv4.Repo

  def process(%School{} = school) do
    Repo.delete(school)
  end
end
