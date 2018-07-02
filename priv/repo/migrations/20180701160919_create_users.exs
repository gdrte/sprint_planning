defmodule SprintPlanning.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def up do
    execute """
    create table users(
    id uuid primary key,
    email varchar(255) not null,
    password varchar(512) not null,
    inserted_at timestamp without time zone not null,
    updated_at timestamp without time zone not null);
    """
  end

  def down do
    execute "drop table users;"
  end
end
