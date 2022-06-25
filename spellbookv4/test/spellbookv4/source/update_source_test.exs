defmodule Spellbookv4.Sources.Commands.UpdateSourceTest do
  use Spellbookv4.DataCase
  alias Spellbookv4.Sources

  @tag :updatesource
  test "process/1 update_source test" do
    source = insert(:source, %{name: "CreateTest"})
    attrs = %{name: "UpdateTest"}
    assert {:ok, update_source} = Sources.update_source(source, attrs)
    assert update_source.name == attrs.name
  end
end
