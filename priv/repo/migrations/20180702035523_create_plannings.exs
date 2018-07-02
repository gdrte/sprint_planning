defmodule SprintPlanning.Repo.Migrations.CreatePlannings do
  use Ecto.Migration

  def up do
    execute """
    create table plannings(

    );
    """
  end

  def down do
    execute "drop table plannings;"
  end

  def change do
    create table(:plannings) do

      timestamps()
    end

  end
end
