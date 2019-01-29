defmodule Skillset.Knowledge.Interest do
  use Ecto.Schema
  import Ecto.Changeset

  schema "interests" do
    # belongs_to :person, Skillset.People.Person, foreign_key: :person_id
    field :person_id, :integer
    belongs_to :skill, Skillset.Skills.Skill, foreign_key: :skill_id

    timestamps()
  end

  @doc false
  def changeset(interest, attrs) do
    interest
    |> cast(attrs, [:person_id, :skill_id])
    |> validate_required([:person_id, :skill_id])
  end
end
