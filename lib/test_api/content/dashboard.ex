defmodule TestApi.Content.Dashboard do
  use Ecto.Schema
  import Ecto.Changeset

  schema "dashboards" do
    field :title, :string

    belongs_to :user, TestApi.Account.User
    has_many :note, TestApi.Content.Note
    has_many :link, TestApi.Content.Link

    timestamps()
  end

  @doc false
  def changeset(dashboard, attrs) do
    dashboard
    |> cast(attrs, [:title])
    |> validate_required([:title])
  end
end
