defmodule EscaperoomWeb.ItemLive.Index do
  use EscaperoomWeb, :live_view

  alias Escaperoom.Inventory_component

  @impl true
  def mount(_params, _session, socket) do
    # if connected?(socket), do: Inventory_component.subscribe()

    {:ok, assign(socket, :items, list_items())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :edit, %{"id" => id}) do
    socket
    |> assign(:page_title, "Edit Item")
    |> assign(:item, Inventory_component.get_item!(id))
  end

  defp apply_action(socket, :new, _params) do
    socket
    :ok
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Listing Items")
    |> assign(:item, nil)
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    item = Inventory_component.get_item!(id)
    {:ok, _} = Inventory_component.delete_item(item)

    {:noreply, assign(socket, :items, list_items())}
  end

  defp list_items do
    Inventory_component.list_items()
  end
end
