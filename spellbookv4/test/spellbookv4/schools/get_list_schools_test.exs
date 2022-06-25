defmodule Spellbookv4.Schools.Queries.ListSchoolsTest do
  use Spellbookv4.DataCase

  alias Spellbookv4.Schools

  @tag :listschools
  test "process/1 list_school test" do
    insert_list(10, :school)
    result = Schools.get_list_schools()
    assert length(result) == 10
  end
end
