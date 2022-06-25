defmodule Spellbookv4.Repo do
  use Ecto.Repo,
    otp_app: :spellbookv4,
    adapter: Ecto.Adapters.Postgres

  def fetch_one(query) do
    case __MODULE__.one(query) do
      nil ->
        {:error, :not_found}

      value ->
        {:ok, value}
    end
  end

  def find(query, id) do
    case __MODULE__.get(query, id) do
      %_{} = schema ->
        {:ok, schema}

      nil ->
        {:error, :not_found}
    end
  end

  def find_by(query, by) do
    case __MODULE__.get_by(query, by) do
      %_{} = schema ->
        {:ok, schema}

      nil ->
        {:error, :not_found}
    end
  end

  def paginate(query, page) when is_nil(page) do
    paginate(query, 1)
  end

  def paginate(query, page) when is_binary(page) do
    paginate(query, String.to_integer(page))
  end

  def paginate(query, page) do
    results = execute_query(query, page)
    total_results = count_total_results(query)
    total_pages = count_total_pages(total_results)

    %{
      current_page: page,
      results_per_page: @results_per_page,
      total_pages: total_pages,
      total_results: total_results,
      list: results
    }
  end

  defp execute_query(query, page) do
    query
    # |> limit(^@results_per_page)
    # |> offset((^page - 1) * ^@results_per_page)
    |> Repo.all()
  end

  defp count_total_results(query) do
    Repo.aggregate(query, :count, :id)
  end

  defp count_total_pages(total_results) do
    total_pages = ceil(total_results / @results_per_page)

    if total_pages > 0, do: total_pages, else: 1
  end
end
