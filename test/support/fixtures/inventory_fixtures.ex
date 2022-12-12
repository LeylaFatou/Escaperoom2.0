defmodule Escaperoom.InventoryFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Escaperoom.Inventory` context.
  """

  @doc """
  Generate a item.
  """
  def item_fixture(attrs \\ %{}) do
    {:ok, item} =
      attrs
      |> Enum.into(%{
        body: "some body",
        description: "some description"
      })
      |> Escaperoom.Inventory.create_item()

    item
  end
end
