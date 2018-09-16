defmodule Discipline.Repo.Migrations.AddUserExercisesTable do
  use Ecto.Migration

  def change do
    create table("user_exercises") do
      add :user_id, references(:users), null: false
      add :exercise_id, references(:users), null: false
      add :data, :jsonb, null: false
      add :began_at, :timestamp, null: false

      timestamps()
    end
  end
end
