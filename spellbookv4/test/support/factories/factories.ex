defmodule Spellbookv4.Factories do
  use ExMachina.Ecto, repo: Spellbookv4.Repo

  use Spellbookv4.Factories.{
    SchoolFactory,
    SourceFactory
  }
end
