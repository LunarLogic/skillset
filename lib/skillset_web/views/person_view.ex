defmodule SkillsetWeb.PersonView do
  use SkillsetWeb, :view

  def skills_for_person(person) do
    person.insights
    |> Enum.map(fn insight -> insight.skill.name end)
    |> Enum.join(", ")
  end
end
