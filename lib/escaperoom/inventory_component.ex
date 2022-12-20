defmodule Escaperoom.Inventory_component do
  import Ecto.Query, warn: false
  alias Escaperoom.Repo

  alias Escaperoom.Inventory.InventoryKeyComponent
  alias Escaperoom.Inventory.GameKeyComponent

  def list_items do
    # Repo.all(Item)
    :ok
  end

  def get_item!(id), do: :ok

  def create_item(attrs \\ %{}) do
    # %InventoryKeyComponent{}
    # |> InventoryKeyComponent.changeset(attrs)
    # |> Repo.insert()
    :ok
  end

  # %InventoryKeyComponent{} = item, attrs) do
  def update_item() do
    # item
    # |> Repo.update()
    :ok
  end

  # %InventoryKeyComponent{} = item) do
  def delete_item() do
    # Repo.delete(item)
    :ok
  end

  # def change_item(%InventoryKeyComponent{} = item, attrs \\ %{}) do
  # InventoryKeyComponent.changeset(item, attrs)
  # end

  def subscribe do
    Phoenix.PubSub.subscribe(Chirp.PubSub, "")
  end

  defp broadcast({:error, _reason} = error, _event), do: error

  defp broadcast({:key_found, inventorykeycomponent}, event) do
    Phoenix.PubSub.broadcast(
      Chirp.PubSub,
      "inventorykeycomponents",
      {event, inventorykeycomponent}
    )

    {:key_found, inventorykeycomponent}
  end

  defp broadcast({:letter_found, _reason} = error, _event), do: error
end
