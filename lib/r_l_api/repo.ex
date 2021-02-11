defmodule RLApi.Repo do
  use Ecto.Repo,
    otp_app: :r_l_api,
    adapter: Ecto.Adapters.Postgres
end
