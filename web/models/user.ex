defmodule CoffeeElixir.User do
  use Ecto.Model

  schema "users" do
    field :first_name, :string
    field :last_name, :string
    field :email, :string
    field :created_at, :datetime
    field :updated_at, :datetime
  end
end
