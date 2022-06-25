defmodule Spellbookv4.Sources.Queries.ListSourcesTest do
  use Spellbookv4.DataCase

  alias Spellbookv4.Sources

  @tag :listsources
  test "process/1 list_source test" do
    insert_list(10, :source)
    result = Sources.get_list_sources()
    assert length(result) == 10
  end
end
