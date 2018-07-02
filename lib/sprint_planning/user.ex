defmodule SprintPlanning.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias SprintPlanning.User

  @primary_key {:id, :binary_id, autogenerate: true}
  @derive {Phoenix.Param, key: :id}
  schema "users" do
    field :email, :string
    field :password, :string
    timestamps()
  end

  @doc false
  def changeset(%User{}=user, attrs) do
    user
    |> cast(attrs, [:email, :password])
    |> validate_required([:email, :password])
  end
end
