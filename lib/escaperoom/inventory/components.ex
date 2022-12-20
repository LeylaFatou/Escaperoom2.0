#Keys:
defmodule Escaperoom.Inventory.GameKeyComponent do
  use Phoenix.LiveComponent

  #must show at desk click
  def render(assigns) do
    ~H"""
    <input class="buttons furniture key" type="image" src="/images/Key.png" id= "key" onclick="get(id, 'inv_key');" hidden="hidden"/>
    """
  end

end


defmodule Escaperoom.Inventory.InventoryKeyComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div>
    <input class="inventory" type="image" src="/images/Key.png" id= "inv_key" hidden="hidden"/>
    </div>
    """
  end

end

#Letters
defmodule Escaperoom.Inventory.GameLetterComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div>
    <input class="buttons furniture letter" type="image" src="/images/Letter.png" id="letter" onclick="get(id, 'inv_letter');"/> <!-- show big/open version and in closed version in inventory -->
    </div>
      """
  end

end

defmodule Escaperoom.Inventory.InventoryLetterComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div>
    <input class="inventory" type="image" src="/images/Letter open.png" id="inv_letter" hidden = "hidden" />
    </div>
    """
  end

end

#Newspapers
defmodule Escaperoom.Inventory.GamePaperComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div>
    <input class="buttons furniture paper" type="image" src="/images/Newspaper.png" id="paper" onclick="get(id, 'inv_paper');"/> <!-- show big and in inventory -->
    </div>
    """
  end

end

defmodule Escaperoom.Inventory.InventoryPaperComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div>
    <input class="inventory" type="image" src="/images/Newspaper.png" id="inv_paper" hidden = "hidden" /> <!-- show big and in inventory -->
    </div>
    """
  end

end

#Sock
defmodule Escaperoom.Inventory.GameSockComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div>
      <input class="buttons furniture sock" type="image" src="/images/Sock.png" id= "sock" onclick="get(id, 'inv_sock');"/> <!-- show in inventory -->
    </div>
    """
  end

end

defmodule Escaperoom.Inventory.InventorySockComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div>
      <input class="inventory" type="image" src="/images/Sock.png" id="inv_sock" hidden = "hidden" /> <!-- show big and in inventory -->
    </div>
    """
  end

end

#Pen
defmodule Escaperoom.Inventory.GamePenComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div>
      <input class="buttons furniture pen" type="image" src="/images/Pen.png" id= "pen" onclick="get(id, 'inv_pen');" hidden = "hidden" /> <!-- show in inventory -->
    </div>
    """
  end

end

defmodule Escaperoom.Inventory.InventoryPenComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div>
      <input class="inventory" type="image" src="/images/Pen.png" id="inv_pen" hidden = "hidden" /> <!-- show big and in inventory -->
    </div>
    """
  end

end

#Undies
defmodule Escaperoom.Inventory.GameUndiesComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div>
      <input class="buttons furniture undies" type="image" src="/images/Underwear.png" id="undies" onclick="get(id, 'inv_undies');" /> <!-- show in inventory -->
    </div>
    """
  end

end

defmodule Escaperoom.Inventory.InventoryUndiesComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div>
      <input class="inventory" type="image" src="/images/Underwear.png" id="inv_undies" hidden = "hidden" /> <!-- show big and in inventory -->
    </div>
    """
  end

end
