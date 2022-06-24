defmodule Spellbookv4.Sources.Commands.DeleteSource do
  alias Spellbookv4.Sources.Entities.Source
  alias Spellbookv4.Repo

  def process(%Source{} = source) do
    Repo.delete(source)
  end
end
