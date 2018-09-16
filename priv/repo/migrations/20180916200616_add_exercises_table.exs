defmodule Discipline.Repo.Migrations.AddExercisesTable do
  use Ecto.Migration

  def change do
    create table("exercises") do
      add :name, :string, size: 255
      add :author_id, references(:users), null: false
      add :description, :text, null: false
      add :requirements, :jsonb, null: false
      add :version, :integer, null: false

      unique_index(:users, [:email])

      timestamps()
    end
  end
end
