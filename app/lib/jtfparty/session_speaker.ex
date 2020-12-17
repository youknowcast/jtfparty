defmodule Jtfparty.SessionSpeaker do
  use Ecto.Schema
  import Ecto.Changeset

  schema "session_speakers" do
    field :session_id, :id
    field :speaker_id, :id

    timestamps()
  end

  @doc false
  def changeset(session_speaker, attrs) do
    session_speaker
    |> cast(attrs, [])
    |> validate_required([])
  end
end
