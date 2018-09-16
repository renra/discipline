defmodule Discipline.Repo.Migrations.AddTrainingPlanExercisesTable do
  use Ecto.Migration

  def change do
    create table("training_plan_exercises") do
      add :training_plan_id, references(:training_plans), null: false
      add :exercise_id, references(:exercises), null: false
      add :goals, :jsonb, null: false
      add :hours_between_repetition, :integer, null: false

      timestamps()
    end
  end
end
