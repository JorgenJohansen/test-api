defmodule TestApiWeb.NoteController do
  use TestApiWeb, :controller

  alias TestApi.Content
  alias TestApi.Content.Note

  action_fallback TestApiWeb.FallbackController

  def index(conn, _params) do
    notes = Content.list_notes()
    render(conn, "index.json", notes: notes)
  end

  def create(conn, %{"note" => note_params}) do
    with {:ok, %Note{} = note} <- Content.create_note(note_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.note_path(conn, :show, note))
      |> render("show.json", note: note)
    end
  end

  def show(conn, %{"id" => id}) do
    note = Content.get_note!(id)
    render(conn, "show.json", note: note)
  end

  def update(conn, %{"id" => id, "note" => note_params}) do
    note = Content.get_note!(id)

    with {:ok, %Note{} = note} <- Content.update_note(note, note_params) do
      render(conn, "show.json", note: note)
    end
  end

  def delete(conn, %{"id" => id}) do
    note = Content.get_note!(id)

    with {:ok, %Note{}} <- Content.delete_note(note) do
      send_resp(conn, :no_content, "")
    end
  end
end
