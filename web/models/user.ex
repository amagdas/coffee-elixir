defmodule CoffeeElixir.User do

  defstruct name: nil, email: nil, active: false, created_at: Bson.UTC, updated_at: Bson.UTC, picture_url: nil
end
