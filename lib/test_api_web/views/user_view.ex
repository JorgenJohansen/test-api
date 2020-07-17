defmodule TestApiWeb.UserView do
  use TestApiWeb, :view
  alias TestApiWeb.UserView

  def render("index.json", %{users: users}) do
    %{data: render_many(users, UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      email: user.email,
      password: user.password,
      token: user.token,
      provider: user.provider,
      name: user.name,
      age: user.age}
  end
end
