defmodule Discipline.Repo.Migrations.AddTrainingPlansTable do
  use Ecto.Migration

  def change do
    create table("training_plans") do
      add :name, :string, size: 255, null: false
      add :maintainer_id, references(:users), null: false

      timestamps()
    end
  end
end
