defmodule Spellbookv4.Sources.Commands.CreateSourceTest do
  use Spellbookv4.DataCase
  alias Spellbookv4.Sources

  @tag :createsource
  test "process/1 create_source test" do
    assert {:ok, create_source} = Sources.create_source(%{name: "CreateTest"})
    {status, get_source} = Sources.get_source(create_source.id)
    assert get_source.id == create_source.id
  end
end
