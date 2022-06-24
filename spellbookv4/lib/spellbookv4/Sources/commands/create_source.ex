defmodule Spellbookv4.Sources.Commands.CreateSource do
  alias Spellbookv4.Sources.Entities.Source
  alias Spellbookv4.Repo

  def process(attrs) do
    %Source{}
    |> Source.changeset(attrs)
    |> Repo.insert()
  end
end
