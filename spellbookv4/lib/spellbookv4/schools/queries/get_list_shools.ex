defmodule Spellbookv4.Schools.Queries.GetListSchools do
  alias Spellbookv4.Schools.Entities.School
  alias Spellbookv4.Repo

  def process do
    Repo.all(School)
  end
end
