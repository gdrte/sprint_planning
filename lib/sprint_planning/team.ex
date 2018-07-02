defmodule SprintPlanning.Team do
  use Ecto.Schema
  import Ecto.Changeset


  schema "teams" do

    timestamps()
  end

  @doc false
  def changeset(team, attrs) do
    team
    |> cast(attrs, [])
    |> validate_required([])
  end
end
