defmodule TestApi.Content.Note do
  use Ecto.Schema
  import Ecto.Changeset

  schema "notes" do

    timestamps()
  end

  @doc false
  def changeset(note, attrs) do
    note
    |> cast(attrs, [])
    |> validate_required([])
  end
end
