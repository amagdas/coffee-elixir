defmodule CoffeeElixir.Repo do

  def get_active_users(collection \\ "users") do
    config = Application.get_env(:coffee_elixir, __MODULE__)
    Mongo.connect! 
    |> Mongo.db(config[:database])
    |> Mongo.Db.collection(collection)
    |> Mongo.Collection.find(%{active: true})
    |> Enum.to_list
    |> Enum.map(fn x -> %{x | :_id => Bson.hex(x._id.oid)|> String.downcase } end)
  end

  def get_user_by_id(id, collection \\ "users") do
    config = Application.get_env(:coffee_elixir, __MODULE__)
    Mongo.connect! 
    |> Mongo.db(config[:database])
    |> Mongo.Db.collection(collection)
    |> Mongo.Collection.find(%{_id: Bson.ObjectId.from_string(id)})
    |> Enum.to_list
    |> Enum.map(fn x -> %{x | :_id => Bson.hex(x._id.oid)|> String.downcase } end)
  end

end
