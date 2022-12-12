defmodule Escaperoom.Inventory.Item do
  use Ecto.Schema
  import Ecto.Changeset

  schema "items" do
    field :body, :string
    field :description, :string

    timestamps()
  end

  @doc false
  def changeset(item, attrs) do
    item
    |> cast(attrs, [:body, :description])
    |> validate_required([:body, :description])
  end
end
