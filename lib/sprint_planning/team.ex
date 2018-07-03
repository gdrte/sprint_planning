defmodule SprintPlanning.Team do
  use SprintPlanning.Schema
  import Ecto.Changeset
  alias SprintPlanning.User

  schema "teams" do
    field :name, :string
    has_many :users, User
    timestamps()
  end

  @doc false
  def changeset(team, attrs) do
    team
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
