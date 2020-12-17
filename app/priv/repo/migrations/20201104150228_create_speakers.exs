defmodule Jtfparty.Repo.Migrations.CreateSpeakers do
  use Ecto.Migration

  def change do
    create table(:speakers) do
      add :name, :string
      add :company, :string
      add :twitter, :string
      add :facebook, :string
      add :github, :string

      timestamps()
    end

  end
end
