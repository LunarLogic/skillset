defmodule Skillset.People.Person do
  use Ecto.Schema
  import Ecto.Changeset


  schema "people" do
    field :name, :string
    has_many :insights, Skillset.Knowledge.Insight

    timestamps()
  end

  @doc false
  def changeset(person, attrs) do
    person
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
