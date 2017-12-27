defmodule ChildSpecExample.AutoSpec do
  use GenServer

  @spec start_link(term) :: GenServer.on_start()
  def start_link(_args) do
    GenServer.start_link(__MODULE__, [], [])
  end

  def init(args) do
    {:ok, args}
  end
end
