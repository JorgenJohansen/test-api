defmodule TestApi.Account.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :age, :integer
    field :email, :string
    field :name, :string
    field :password, :string
    field :provider, :string
    field :token, :string

    has_many :dashboard, TestApi.Content.Dashboard
    has_many :note, TestApi.Content.Note
    has_many :link, TestApi.Content.Link

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email, :password, :token, :provider, :name, :age])
    |> validate_required([:name, :email])
  end
end
