defmodule TestApi.Content.Link do
  use Ecto.Schema
  import Ecto.Changeset

  schema "links" do

    timestamps()
  end

  @doc false
  def changeset(link, attrs) do
    link
    |> cast(attrs, [])
    |> validate_required([])
  end
end
