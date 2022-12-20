# Keys:
defmodule Escaperoom.Inventory.GameKeyComponent do
  use Phoenix.LiveComponent

  # must show at desk click
  def render(assigns) do
    ~H"""
    <input class="buttons furniture key" type="image" src="/images/Key.png" id= "key" onclick="get(id, 'inv_key'); showScreen('zoomKey');" hidden="hidden"/>
    """
  end

  def handle_event("key_found", %{"title" => title}, socket) do
    send(self(), {:updated_card, %{socket.assigns.card | title: title}})

    # |> create_key()

    {:noreply, socket}
    |> Phoenix.PubSub.broadcast(
      Chirp.PubSub,
      "inventorykeycomponents",
      {title}
    )
  end
end

defmodule Escaperoom.Inventory.InventoryKeyComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div>
    <input class="inventory" type="image" src="/images/Key.png" id= "inv_key" hidden="hidden" onclick="showScreen('zoomKey');"/>
    </div>
    """
  end
end

# Letters
defmodule Escaperoom.Inventory.GameLetterComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div>
    <input class="buttons furniture letter" type="image" src="/images/Letter.png" id="letter" onclick="get(id, 'inv_letter'); showScreen('zoomLetter');"/> <!-- show big/open version and in closed version in inventory -->
    </div>
    """
  end
end

defmodule Escaperoom.Inventory.InventoryLetterComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div>
    <input class="inventory" type="image" src="/images/Letter open.png" id="inv_letter" hidden = "hidden" onclick="showScreen('zoomLetter');"/>
    </div>
    """
  end
end

# Newspapers
defmodule Escaperoom.Inventory.GamePaperComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div>
    <input class="buttons furniture paper" type="image" src="/images/Newspaper.png" id="paper" onclick="get(id, 'inv_paper'); showScreen('zoomPaper');" /> <!-- show big and in inventory -->
    </div>
    """
  end
end

defmodule Escaperoom.Inventory.InventoryPaperComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div>
    <input class="inventory" type="image" src="/images/Newspaper.png" id="inv_paper" hidden = "hidden" onclick="showScreen('zoomPaper');" /> <!-- show big and in inventory -->
    </div>
    """
  end
end

# Sock
defmodule Escaperoom.Inventory.GameSockComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div>
      <input class="buttons furniture sock" type="image" src="/images/Sock.png" id= "sock" onclick="get(id, 'inv_sock'); showScreen('zoomSock');"/> <!-- show in inventory -->
    </div>
    """
  end
end

defmodule Escaperoom.Inventory.InventorySockComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div>
      <input class="inventory" type="image" src="/images/Sock.png" id="inv_sock" hidden = "hidden" onclick="showScreen('zoomSock');"/> <!-- show big and in inventory -->
    </div>
    """
  end
end

# Pen
defmodule Escaperoom.Inventory.GamePenComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div>
      <input class="buttons furniture pen" type="image" src="/images/Pen.png" id= "pen" onclick="get(id, 'inv_pen'); showScreen('zoomPen');" hidden = "hidden" /> <!-- show in inventory -->
    </div>
    """
  end
end

defmodule Escaperoom.Inventory.InventoryPenComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div>
      <input class="inventory" type="image" src="/images/Pen.png" id="inv_pen" hidden = "hidden" onclick="showScreen('zoomPen');"/> <!-- show big and in inventory -->
    </div>
    """
  end
end

# Undies
defmodule Escaperoom.Inventory.GameUndiesComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div>
      <input class="buttons furniture undies" type="image" src="/images/Underwear.png" id="undies" onclick="get(id, 'inv_undies');showScreen('zoomUndies');"/> <!-- show in inventory -->
    </div>
    """
  end
end

defmodule Escaperoom.Inventory.InventoryUndiesComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div>
      <input class="inventory" type="image" src="/images/Underwear.png" id="inv_undies" hidden = "hidden" onclick="showScreen('zoomUndies');"/> <!-- show big and in inventory -->
    </div>
    """
  end
end
