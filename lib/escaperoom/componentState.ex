defmodule Escaperoom.Inventory.ComponentState do
  use GenServer
  use Phoenix.HTML

  alias __MODULE__
  alias Escaperoom.Inventory.ComponentState
  alias Phoenix.PubSub

  {:ok, pid} = GenServer.start_link(__MODULE__, :ok)

  @impl true
  def init(:ok) do
    {:ok, %{}}
  end

  defstruct name: nil, isFound: nil

  @type t :: %ComponentState{
    name: nil | atom(),
    isFound: boolean()
  }

  @spec build(name :: atom()) :: t()
  def build(name) do
    %ComponentState{name: name, isFound: false}
  end

  defstruct componentList: [
    ComponentState.build(:key),
    ComponentState.build(:letter)
  ]

  @spec is_found?(t()) :: boolean()
  def is_found?(%ComponentState{isFound: true}), do: true
  def is_found?(%ComponentState{}), do: false


  @spec find(component :: atom())
  def find(component) do
    GenServer.call(pid, {component, :find})
  end

  def handle_call({component, :find}) do
    updated_components =
      Enum.map(componentList, fn comp ->
        if comp.name == component do
          %ComponentState{comp | isFound: true}
        else
          comp
        end
      end)
  end

  @spec find(name :: atom(), visibility :: boolean())
  def component(name, visibility, opts \\ []) do
    case find_component(name) do
      {:ok, %ComponentState{} = comp} ->
        render_component(comp.isFound)
    end
  end

  def find_component(name) do
    case Enum.find(componentList, &(&1.name == name)) do
      nil ->
        {:error, "Component not found"}
      %ComponentState{} = comp ->
        {:ok, comp}
    end
  end

  def render_component(visibility) do
    if visibility == false do
      Phoenix.HTML.Tag.content_tag(hidden, "hidden")
    else
      Phoenix.HTML.Tag.content_tag(hidden, "")
    end
  end

end
