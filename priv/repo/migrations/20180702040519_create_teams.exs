defmodule SprintPlanning.Repo.Migrations.CreateTeams do
  use Ecto.Migration

  def up do
    create table(:teams, primary_key: false) do
      add :id, :uuid, :primary_key
      add :name, :string
      timestamps()
    end
  end

  def down  do
    drop table("teams")
  end
end
