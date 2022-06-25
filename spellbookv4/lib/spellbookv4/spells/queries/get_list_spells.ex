defmodule Spellbookv4.Spells.Queries.GetListSpells do
  alias Spellbookv4.Spells.Entities.Spell
  alias Spellbookv4.Repo

  def process do
    Repo.all(Spell)
  end

  def process(params) do
    Spell
    # |> with_name()
    # |> with_name(params)
    # |> with_level(params)
    # |> with_casting_time(params)
    # |> with_range(params)
    # |> with_components(params)
    # |> with_duration(params)
    # |> with_description(params)
    # |> select_fields()
    |> Repo.paginate(params)
  end

  # defp with_name(query, name) do
  #  from spell in query,
  #    where: spell.name == ^name
  # end

  # defp with_level(query, level) do
  #  from spell in query,
  #    where: spell.level == ^level
  # end

  # defp with_name(query, %{name: name}) do
  #  from spell in query,
  #    where: spell.name == ^name
  # end
  # defp with_level(query, %{level: level}) do
  #  from spell in query,
  #    where: spell.level == ^level
  # end
  # defp with_casting_time(query, %{casting_time: casting_time}) do
  #  from spell in query,
  #    where: spell.casting_time == ^casting_time
  # end
  # defp with_name(query, %{name: name}) do
  #  from spell in query,
  #    where: spell.name == ^name
  # end
  # defp with_range(query, %{range: range}) do
  #  from spell in query,
  #    where: spell.range == ^range
  # end
  # defp with_components(query, %{components: components}) do
  #  from spell in query,
  #    where: spell.components == ^components
  # end
  # defp with_duration(query, %{duration: duration}) do
  #  from spell in query,
  #    where: spell.duration == ^duration
  # end
  # defp with_description(query, %{description: description}) do
  #  from spell in query,
  #    where: spell.description == ^description
  # end
end
