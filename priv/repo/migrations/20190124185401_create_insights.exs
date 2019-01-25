defmodule Skillset.Repo.Migrations.CreateInsights do
  use Ecto.Migration

  def change do
    create table(:insights) do
      add :person_id, references(:people, on_delete: :nothing)
      add :skill_id, references(:skills, on_delete: :nothing)

      timestamps()
    end

    create index(:insights, [:person_id])
    create index(:insights, [:skill_id])
  end
end
