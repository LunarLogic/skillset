defmodule Skillset.Repo.Migrations.CreateInterests do
  use Ecto.Migration

  def change do
    create table(:interests) do
      add :person_id, references(:people, on_delete: :nothing)
      add :skill_id, references(:skills, on_delete: :nothing)

      timestamps()
    end

    create index(:interests, [:person_id])
    create index(:interests, [:skill_id])
  end
end
