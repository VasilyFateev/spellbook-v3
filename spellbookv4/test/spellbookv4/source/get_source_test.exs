defmodule Spellbookv4.Sources.Queries.GetSourceTest do
  use Spellbookv4.DataCase

  alias Spellbookv4.Sources

  @tag :getsource
  test "process/1 get source by id" do
    source = insert(:source) |> IO.inspect()
    Sources.get_source(source.id)
    assert {:ok, result} = Sources.get_source(source.id)
    assert source.id == result.id
  end
end
