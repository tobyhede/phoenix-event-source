defmodule EventSource.Repo.Migrations.CreateEvent do
  use Ecto.Migration

  def change do
    create table(:events) do
      add :type, :text, null: false
      add :partition, :integer, null: false, default: 0
      add :body, :jsonb, null: false
      timestamps
    end

  end
end
