defmodule Jtfparty.Repo.Migrations.CreateSessions do
  use Ecto.Migration

  def change do
    create table(:sessions) do
      add :title, :text
      add :description, :text

      timestamps()
    end

  end
end
