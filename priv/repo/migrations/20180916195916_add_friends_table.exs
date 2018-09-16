defmodule Discipline.Repo.Migrations.AddFriendsTable do
  use Ecto.Migration

  def change do
    create table("friends") do
      add :befriender_id, references(:users), null: false
      add :befriended_id, references(:users), null: false

      unique_index(:friends, [:befriender_id, :befriended_id])

      timestamps()
    end
  end
end
