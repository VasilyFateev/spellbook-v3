defmodule Spellbookv4.Schools do
  alias Spellbookv4.Schools.Commands.{
    CreateSchool,
    DeleteSchool,
    UpdateSchool
  }

  alias Spellbookv4.Schools.Queries.{
    GetSchool,
    GetListSchools
  }

  # Commands
  defdelegate create_school(attrs), to: CreateSchool, as: :process
  defdelegate delete_school(school), to: DeleteSchool, as: :process
  defdelegate update_school(school, attrs), to: UpdateSchool, as: :process

  # Queries
  defdelegate get_school(id), to: GetSchool, as: :process
  defdelegate get_list_schools(), to: GetListSchools, as: :process
end
