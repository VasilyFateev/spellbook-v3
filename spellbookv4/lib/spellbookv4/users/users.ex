defmodule Spellbookv4.Users do
  alias Spellbookv4.Users.Commands.{
    CreateUser,
    DeleteUser,
    UpdateUser
  }

  alias Spellbookv4.Users.Queries.{
    GetUser,
    GetListUsers
  }

  # Commands
  defdelegate create_user(attrs), to: CreateUser, as: :process
  defdelegate delete_user(user), to: DeleteUser, as: :process
  defdelegate update_user(user, attrs), to: UpdateUser, as: :process

  # Queries
  defdelegate get_user(id), to: GetUser, as: :process
  defdelegate get_list_users(), to: GetListUsers, as: :process
end
