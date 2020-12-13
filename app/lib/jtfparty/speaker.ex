defmodule Jtfparty.Speaker do
  use Ecto.Schema
  import Ecto.Changeset

  schema "speakers" do
    field :company, :string
    field :facebook, :string
    field :github, :string
    field :name, :string
    field :twitter, :string

    timestamps()
  end

  @doc false
  def changeset(speaker, attrs) do
    speaker
    |> cast(attrs, [:name, :company, :twitter, :facebook, :github])
    |> validate_required([:name, :company, :twitter, :facebook, :github])
  end
end
