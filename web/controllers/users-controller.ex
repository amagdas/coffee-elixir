defmodule CoffeeElixir.UsersController do
  use Phoenix.Controller

  plug :action

  def index(conn, _params) do
    json conn, %{active_users: CoffeeElixir.UserQuery.active}
  end

  def show(conn, %{"id" => id}) do
    user = CoffeeElixir.Repo.get CoffeeElixir.User, id
    json conn, user
  end


end
