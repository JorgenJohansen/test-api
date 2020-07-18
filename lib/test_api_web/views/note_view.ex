defmodule TestApiWeb.NoteView do
  use TestApiWeb, :view
  alias TestApiWeb.NoteView

  def render("index.json", %{notes: notes}) do
    %{data: render_many(notes, NoteView, "note.json")}
  end

  def render("show.json", %{note: note}) do
    %{data: render_one(note, NoteView, "note.json")}
  end

  def render("note.json", %{note: note}) do
    %{id: note.id, title: note.title, content: note.content, user_id: note.user_id, dashboard_id: note.dashboard_id}
  end
end
