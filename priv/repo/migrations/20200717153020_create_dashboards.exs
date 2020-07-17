defmodule TestApi.Repo.Migrations.CreateDashboards do
  use Ecto.Migration

  def change do
    create table(:dashboards) do
      add :title, :string
      add :user_id, references(:users)

      timestamps()
    end

  end
end
