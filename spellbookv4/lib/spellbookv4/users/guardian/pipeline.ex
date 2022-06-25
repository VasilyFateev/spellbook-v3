defmodule Spellbookv4.Users.Guardian.Pipeline do
  use Guardian.Plug.Pipeline,
    otp_app: :Spellbookv4,
    error_handler: Spellbookv4.Users.Guardian.ErrorHandler,
    module: Spellbookv4.Users.Services.Guardian

  plug Guardian.Plug.VerifyHeader, claims: %{"typ" => "access"}
  # Load the user if either of the verifications worked
  plug Guardian.Plug.LoadResource, allow_blank: true
end
