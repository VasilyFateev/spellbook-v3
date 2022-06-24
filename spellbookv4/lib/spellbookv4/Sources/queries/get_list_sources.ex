defmodule Spellbookv4.Sources.Queries.GetListSources do
  alias Spellbookv4.Sources.Entities.Source
  alias Spellbookv4.Repo

  def process do
    Repo.all(Source)
  end
end
