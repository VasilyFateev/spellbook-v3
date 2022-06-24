defmodule Spellbookv4.Sources do
  alias Spellbookv4.Sources.Commands.{
    CreateSource,
    DeleteSource,
    UpdateSource
  }

  alias Spellbookv4.Sources.Queries.{
    GetSource,
    GetListSources
  }

  # Commands
  defdelegate create_source(attrs), to: CreateSource, as: :process
  defdelegate delete_source(source), to: DeleteSource, as: :process
  defdelegate update_source(source, attrs), to: UpdateSource, as: :process

  # Queries
  defdelegate get_source(id), to: GetSource, as: :process
  defdelegate get_list_sources(), to: GetListSources, as: :process
end
