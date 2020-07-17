defmodule TestApiWeb.DashboardView do
  use TestApiWeb, :view
  alias TestApiWeb.DashboardView

  def render("index.json", %{dashboards: dashboards}) do
    %{data: render_many(dashboards, DashboardView, "dashboard.json")}
  end

  def render("show.json", %{dashboard: dashboard}) do
    %{data: render_one(dashboard, DashboardView, "dashboard.json")}
  end

  def render("dashboard.json", %{dashboard: dashboard}) do
    %{id: dashboard.id}
  end
end
