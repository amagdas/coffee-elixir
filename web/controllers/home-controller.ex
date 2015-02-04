defmodule CoffeeElixir.HomeController do
  use Phoenix.Controller
  alias Mix.Tasks.Phoenix.Routes
  #alias Phoenix.Router.Route

  plug :action

  defp formatRoute(route) do
    %{verb: verb, path: path, action: action} = route
    %{verb: verb, path: path}
  end

  defp getRoutes do
    router = Module.concat(Mix.Phoenix.base(), "Router")
    router.__routes__ |> Enum.map(fn(x) -> formatRoute(x) end)
  end

  def index(conn, _params) do
    routes = getRoutes()
    json conn, %{routes: routes}
  end
end
