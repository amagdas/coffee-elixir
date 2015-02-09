defmodule CoffeeElixir.UsersController do
  use Phoenix.Controller
  alias CoffeeElixir.Repo

  plug :action

  def index(conn, _params) do
    active_users = Repo.get_active_users()
    IO.inspect active_users
    json conn, active_users
  end

  def show(conn, %{"id" => id}) do
    user = Repo.get_user_by_id(id)
    json conn, user
  end

end
