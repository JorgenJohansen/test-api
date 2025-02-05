defmodule TestApiWeb.LinkView do
  use TestApiWeb, :view
  alias TestApiWeb.LinkView

  def render("index.json", %{links: links}) do
    %{data: render_many(links, LinkView, "link.json")}
  end

  def render("show.json", %{link: link}) do
    %{data: render_one(link, LinkView, "link.json")}
  end

  def render("link.json", %{link: link}) do
    %{id: link.id, title: link.title, link: link.link, user_id: link.user_id, dashboard_id: link.dashboard_id}
  end
end
