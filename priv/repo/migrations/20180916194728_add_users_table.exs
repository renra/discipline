defmodule Discipline.Repo.Migrations.AddUsersTable do
  use Ecto.Migration

  def change do
    create table("users") do
      add :email, :string, size: 255, null: false
      add :hashed_password, :text
      add :token, :text

      unique_index(:users, [:email])

      timestamps()
    end
  end
end
