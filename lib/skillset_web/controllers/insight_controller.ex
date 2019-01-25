defmodule SkillsetWeb.InsightController do
  use SkillsetWeb, :controller

  alias Skillset.Knowledge
  alias Skillset.Knowledge.Insight

  def index(conn, _params) do
    insights = Knowledge.list_insights()
    render(conn, "index.html", insights: insights)
  end
end
