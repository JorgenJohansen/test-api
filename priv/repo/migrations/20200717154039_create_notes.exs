defmodule TestApi.Repo.Migrations.CreateNotes do
  use Ecto.Migration

  def change do
    create table(:notes) do
      add :title, :string
      add :content, :text

      add :user_id, references(:users)
      add :dashboard_id, references(:dashboards)

      timestamps()
    end

  end
end
