defmodule Escaperoom.Inventory.InventoryKeyComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <input class="inventory" type="image" src="/images/Key.png" id= "inv_key" hidden="hidden"/>
    """
  end

  # def myKey(assigns) do

  # end

end


defmodule Escaperoom.Inventory.GameKeyComponent do
  use Phoenix.LiveComponent

  #must show at desk click
  def render(assigns) do
    ~H"""
    <input class="buttons furniture key" type="image" src="/images/Key.png" id= "key" onclick="get(id, 'inv_key');" hidden="hidden"/>
    """
  end

  # def myKey(assigns) do

  # end

end
