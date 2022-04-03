defmodule Mix.Tasks.Git do
  @moduledoc "The hello mix task: `mix help hello`"
  use Mix.Task

  @shortdoc "Simply runs the Git.run/0 command."
  def run(_) do
    Mix.Task.run("app.start")

    System.shell("git add .", into: IO.stream())
    System.shell("git commit -m 'update.'", into: IO.stream())
    System.shell("git push", into: IO.stream())
  end
end
