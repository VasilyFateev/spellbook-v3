defmodule Spellbookv4.Sources.Queries.GetSource do
  alias Spellbookv4.Sources.Entities.Source
  alias Spellbookv4.Repo

  def process(id) do
    Repo.find(Source, id)
  end
end
