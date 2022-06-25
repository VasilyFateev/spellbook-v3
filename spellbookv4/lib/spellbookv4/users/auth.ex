# Авторизация
defmodule Spellbookv4.Users.Auth do
  alias Spellbookv4.Users.Entities.User
  alias Spellbookv4.Users.Services.Guardian

  def sign_user(%User{} = user) do
    with {:ok, access_token, refresh_token} <- Guardian.sign(user) do
      {:ok, access_token, refresh_token}
    end
  end
end
