defmodule Skillset.Repo do
  use Ecto.Repo,
    otp_app: :skillset,
    adapter: Ecto.Adapters.Postgres
end
