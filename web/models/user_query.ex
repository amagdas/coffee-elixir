defmodule CoffeeElixir.UserQuery do
  import Ecto.Query

  def active do
    query = from users in CoffeeElixir.User,
            where: users.active == true,
            select: users
    CoffeeElixir.Repo.all query
  end
end
