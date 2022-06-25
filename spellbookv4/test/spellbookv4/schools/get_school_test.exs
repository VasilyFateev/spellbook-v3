defmodule Spellbookv4.Schools.Queries.GetSchoolTest do
  use Spellbookv4.DataCase

  alias Spellbookv4.Schools

  @tag :getschool
  test "process/1 get school by id" do
    school = insert(:school) |> IO.inspect()
    Schools.get_school(school.id)
    assert {:ok, result} = Schools.get_school(school.id)
    assert school.id == result.id
  end
end
