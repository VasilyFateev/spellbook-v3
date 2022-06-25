defmodule Spellbookv4.Sources.Commands.DeleteSourceTest do
  use Spellbookv4.DataCase

  alias Spellbookv4.Sources

  @tag :deletesource
  test "process/1 delete_source test" do
    source = insert(:source)
    assert {:ok, _result} = Sources.delete_source(source)
    assert {:error, :not_found} = Sources.get_source(source.id)
  end
end
