defmodule SkillsetWeb.PageController do
  use SkillsetWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
