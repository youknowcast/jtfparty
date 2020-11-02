defmodule Jtfparty.Sessions.Session do
  use Ecto.Schema
  import Ecto.Changeset

  schema "sessions" do
    field :description, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(session, attrs) do
    session
    |> cast(attrs, [:title, :description])
    |> validate_required([:title, :description])
  end
end
