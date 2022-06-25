defmodule Spellbookv4.Schools.Commands.DeleteSchoolTest do
  use Spellbookv4.DataCase

  alias Spellbookv4.Schools

  @tag :deleteschool
  test "process/1 delete_school test" do
    school = insert(:school)
    assert {:ok, _result} = Schools.delete_school(school)
    assert {:error, :not_found} = Schools.get_school(school.id)
  end
end
