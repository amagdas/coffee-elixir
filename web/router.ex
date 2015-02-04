defmodule CoffeeElixir.Router do
  use Phoenix.Router

  pipeline :api do
    plug :accepts, ~w(json)
  end

  scope "/api", CoffeeElixir do
    pipe_through :api

    get "/", HomeController, :index
    resources "/users", UsersController, except: [:edit, :new]
  end
end
