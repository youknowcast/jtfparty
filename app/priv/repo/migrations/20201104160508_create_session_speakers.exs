defmodule Jtfparty.Repo.Migrations.CreateSessionSpeakers do
  use Ecto.Migration

  def change do
    create table(:session_speakers) do
      add :session_id, references(:sessions, on_delete: :nothing)
      add :speaker_id, references(:speakers, on_delete: :nothing)

      timestamps()
    end

    create index(:session_speakers, [:session_id])
    create index(:session_speakers, [:speaker_id])
  end
end
