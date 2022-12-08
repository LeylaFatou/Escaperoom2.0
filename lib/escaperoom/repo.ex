defmodule Escaperoom.Repo do
  use Ecto.Repo,
    otp_app: :escaperoom,
    adapter: Ecto.Adapters.Postgres
end
