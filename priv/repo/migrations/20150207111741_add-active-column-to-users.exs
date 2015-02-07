defmodule :"Elixir.CoffeeElixir.Repo.Migrations.Add-active-column-to-users" do
  use Ecto.Migration

  def up do
    alter table(:users) do 
      add :active, :boolean, default: false
    end
  end

  def down do
    alter table(:users) do 
      remove :active
    end
  end
end
