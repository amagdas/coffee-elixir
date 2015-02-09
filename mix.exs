defmodule CoffeeElixir.Mixfile do
  use Mix.Project

  def project do
    [app: :coffee_elixir,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: ["lib", "web"],
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {CoffeeElixir, []},
     applications: [:phoenix, :cowboy, :mongo, :logger]]
  end

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [{:phoenix, github: "phoenixframework/phoenix"},
     {:cowboy, "~> 1.0"},
     {:mongo, "~>0.5.0"}
   ]
  end
end
