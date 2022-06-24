defmodule Spellbookv4.Sources.Commands.UpdateSource do
  alias Spellbookv4.Sources.Entities.Source
  alias Spellbookv4.Repo

  def process(%Source{} = source, attrs) do
    source
    |> Source.changeset(attrs)
    |> Repo.update()
  end
end
