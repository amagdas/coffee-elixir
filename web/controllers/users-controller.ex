defmodule CoffeeElixir.UsersController do
  use Phoenix.Controller

  plug :action

  def index(conn, _params) do
    json conn, %{packages: []}
  end
end
