defmodule CoffeeElixir.Queries do

  def get_packages(collection, db_name) do
    Mongo.connect!
    |> Mongo.db(db_name)
    |> Mongo.Db.collection(collection)
    |> Mongo.Collection.find(%{type: "composite"})
    |> Enum.to_list
  end

end
