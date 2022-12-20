defmodule Escaperoom.Inventory.InventoryKeyComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <input class="inventory" type="image" src="/images/Key.png" id= "inv_key" hidden="hidden"/>
    """
  end

  #   @doc false
  # def changeset(item, attrs) do
  #   item
  #   |> cast(attrs, [:body, :description])
  #   |> validate_required([:body, :description])
  # end

  # def myKey(assigns) do

  # end
end

defmodule Escaperoom.Inventory.GameKeyComponent do
  use Phoenix.LiveComponent

  alias Escaperoom.Inventory_component

  # must show at desk click
  def render(assigns) do
    ~H"""
    <div phx-click = "key_found">
    <input class="buttons furniture key" type="image" src="/images/Key.png" id= "key" onclick="get(id, 'inv_key');" hidden="hidden"/>
    </div>
    """
  end

  def handle_event("key_found", %{"title" => title}, socket) do
    send(self(), {:updated_card, %{socket.assigns.card | title: title}})

    {:noreply, socket}
    |> Phoenix.PubSub.broadcast(
      Chirp.PubSub,
      "inventorykeycomponents",
      {title}
    )
  end

  # def myKey(assigns) do

  # end
end
