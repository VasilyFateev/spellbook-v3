defmodule Spellbookv4.Schools.Commands.CreateSchoolTest do
  use Spellbookv4.DataCase
  alias Spellbookv4.Schools

  @tag :createschool
  test "process/1 create_school test" do
    assert {:ok, create_school} = Schools.create_school(%{name: "CreateTest"})
    {status, get_school} = Schools.get_school(create_school.id)
    assert get_school.id == create_school.id
  end
  @tag :createschoolnegative
  test "process/1 create_school negative_test" do
    assert {:error, create_school} = Schools.create_school(%{name: nil})
  end
end
