defmodule Spellbookv4.Users.Guardian.ErrorHandler do
  use Spellbookv4Web, :controller

  alias Spellbookv4.Users.Changeset.Error
  alias Spellbookv4Web.ErrorView

  def auth_error(conn, {type, _reason}, _opts) do
    error =
      type
      |> to_string()
      |> Error.auth_error()

    conn
    |> put_status(401)
    |> put_view(ErrorView)
    |> render("401.json", error: error)
  end
end
