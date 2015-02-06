defmodule CoffeeElixir.Repo.Migrations.InitialUsersCreate do
  use Ecto.Migration

  def up do
    create table(:users) do 
      add :first_name,  :string, size: 255
      add :last_name,   :string, size: 255
      add :email,       :string, size: 255
      timestamps
    end
    create index(:users, [:email], unique: true)
  end

  def down do
    drop index(:users, [:email], unique: true)
    drop table(:users)
  end
end
