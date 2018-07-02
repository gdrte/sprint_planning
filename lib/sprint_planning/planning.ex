defmodule SprintPlanning.Planning do
  use Ecto.Schema
  import Ecto.Changeset


  schema "plannings" do

    timestamps()
  end

  @doc false
  def changeset(planning, attrs) do
    planning
    |> cast(attrs, [])
    |> validate_required([])
  end
end
