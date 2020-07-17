defmodule TestApi.Content.Link do
  use Ecto.Schema
  import Ecto.Changeset

  schema "links" do
    field :title, :string
    field :link, :string

    belongs_to :user, TestApi.Account.User
    belongs_to :dashboard, TestApi.Content.Dashboard


    timestamps()
  end

  @doc false
  def changeset(link, attrs) do
    link
    |> cast(attrs, [])
    |> validate_required([])
  end
end
