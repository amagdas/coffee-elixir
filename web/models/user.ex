defmodule CoffeeElixir.User do
  use Ecto.Model

  schema "users" do
    field :first_name, :string
    field :last_name, :string
    field :email, :string
    field :active, :boolean, default: false
    timestamps
  end
end
