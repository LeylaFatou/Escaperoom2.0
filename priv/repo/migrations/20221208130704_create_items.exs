defmodule Escaperoom.Repo.Migrations.CreateItems do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :body, :string
      add :description, :string

      timestamps()
    end
  end
end
