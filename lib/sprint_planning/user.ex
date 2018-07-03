defmodule SprintPlanning.User do
  use SprintPlanning.Schema
  import Ecto.Changeset
  alias SprintPlanning.User
  alias SprintPlanning.Team

  schema "users" do
    field :email, :string
    field :password, :string
    belongs_to :team, Team
    timestamps()
  end

  @doc false
  def changeset(%User{}=user, attrs) do
    user
    |> cast(attrs, [:email, :password])
    |> validate_required([:email, :password])
  end
end
