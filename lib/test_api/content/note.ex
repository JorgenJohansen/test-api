defmodule TestApi.Content.Note do
  use Ecto.Schema
  import Ecto.Changeset

  schema "notes" do
    field :title, :string
    field :content, :string

    belongs_to :user, TestApi.Account.User
    belongs_to :dashboard, TestApi.Content.Dashboard

    timestamps()
  end

  @doc false
  def changeset(note, attrs) do
    note
    |> cast(attrs, [])
    |> validate_required([])
  end
end
