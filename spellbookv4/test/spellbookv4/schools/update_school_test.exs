defmodule Spellbookv4.Schools.Commands.UpdateSchoolTest do
  use Spellbookv4.DataCase
  alias Spellbookv4.Schools

  @tag :updateschool
  test "process/1 update_school test" do
    school = insert(:school, %{name: "CreateTest"})
    attrs = %{name: "UpdateTest"}
    assert {:ok, update_school} = Schools.update_school(school, attrs)
    assert update_school.name == attrs.name
  end
end
