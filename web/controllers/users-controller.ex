defmodule CoffeeElixir.UsersController do
  use Phoenix.Controller

  plug :action

  def get_packages(collection, db_name) do
    Mongo.connect!
    |> Mongo.db(db_name)
    |> Mongo.Db.collection(collection)
    |> Mongo.Collection.find()
    |> Enum.to_list
  end

  def index(conn, _params) do
    packages = get_packages("packages", "coffee_elixir")
    json conn, %{packages: packages}
  end
end
