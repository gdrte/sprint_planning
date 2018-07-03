defmodule SprintPlanning.Repo.Migrations.UsersTeams do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :team_id, references(:teams, type: :uuid)
    end
  end
end
