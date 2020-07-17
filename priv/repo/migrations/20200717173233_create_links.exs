defmodule TestApi.Repo.Migrations.CreateLinks do
  use Ecto.Migration

  def change do
    create table(:links) do
      add :title, :string
      add :link, :string

      add :user_id, references(:users)
      add :dashboard_id, references(:dashboards)

      timestamps()
    end

  end
end
