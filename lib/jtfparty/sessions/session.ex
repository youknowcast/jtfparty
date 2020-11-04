defmodule Jtfparty.Sessions.Session do
  use Ecto.Schema
  import Ecto.Changeset

  schema "sessions" do
    belongs_to :event, Jtfparty.Event
    field :place, :string
    field :timebox, :string
    field :time, :integer
    field :youtube_url, :string
    field :title, :string
    field :description, :string

    timestamps()
  end

  @doc false
  def changeset(session, attrs) do
    session
    |> cast(attrs, [:place, :timebox, :youtube_url, :title, :description])
    |> validate_required([:title])
  end
end
