defmodule IonoData.Repo.Migrations.CreateIonosonde do
  use Ecto.Migration

  def change do
    create table(:ionosondes) do
      add :location, :string
      add :muf_3k, :float
      add :f_of_f2, :float
      add :recorded_at, :datetime
    end

    create index(:ionosondes, [:location])
    create index(:ionosondes, [:location, :recorded_at])
  end
end
