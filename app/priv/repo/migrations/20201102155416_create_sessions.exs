defmodule Jtfparty.Repo.Migrations.CreateSessions do
  use Ecto.Migration

  def change do
    create table(:sessions) do
      add :event_id, references(:events)
      add :place, :text
      add :timebox, :text
      add :time, :integer
      add :title, :text
      add :description, :text
      add :youtube_url, :text

      timestamps()
    end

  end
end
