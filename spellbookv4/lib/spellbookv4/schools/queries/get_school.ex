defmodule Spellbookv4.Schools.Queries.GetSchool do
  alias Spellbookv4.Schools.Entities.School
  alias Spellbookv4.Repo

  def process(id) do
    Repo.find(School, id)
  end
end
