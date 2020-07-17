defmodule TestApi.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :password, :string
      add :token, :string
      add :provider, :string
      add :name, :string
      add :age, :integer

      timestamps()
    end

  end
end
