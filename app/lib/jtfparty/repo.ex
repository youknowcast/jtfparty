defmodule Jtfparty.Repo do
  use Ecto.Repo,
    otp_app: :jtfparty,
    adapter: Ecto.Adapters.Postgres
end
