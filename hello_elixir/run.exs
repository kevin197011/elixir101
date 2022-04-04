defmodule Run do
  @moduledoc false

  @doc """
  run functions
  """

  @spec run(BitString) :: term()
  def run(cmd) do
    System.shell(cmd, into: IO.stream)
  end
end

"uptime" |> Run.run()

# IEx.Info.info(IO.Stream(IO.puts("123"))) |> IO.inspect()
