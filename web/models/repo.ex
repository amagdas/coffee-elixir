defmodule CoffeeElixir.Repo do
  use Ecto.Repo,
    otp_app: :coffee_elixir,
    adapter: Ecto.Adapters.Postgres
end
