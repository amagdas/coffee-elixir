defmodule CoffeeElixir.Router do
  use Phoenix.Router

  pipeline :api do
    plug :accepts, ~w(json)
  end

  scope "/", CoffeeElixir do
    pipe_through :api
    get "/", HomeController, :index
  end

  scope "/api", CoffeeElixir, as: :api do
    pipe_through :api

    get "/", HomeController, :index
    resources "/users", UsersController, except: [:edit, :new]
  end
end
