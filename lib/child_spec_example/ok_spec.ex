defmodule ChildSpecExample.OkSpec do
  use GenServer

  @spec child_spec(term) :: :supervisor.child_spec()
  def child_spec(_arg) do
    %{
      id: __MODULE__,
      start: {__MODULE__, :start_link, []},
      restart: :permanent,
      shutdown: 5000,
      type: :worker
    }
  end

  @spec start_link :: GenServer.on_start()
  def start_link do
    GenServer.start_link(__MODULE__, [], [])
  end

  def init(args) do
    {:ok, args}
  end
end
