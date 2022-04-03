defmodule HelloElixirTest do
  use ExUnit.Case
  doctest HelloElixir

  test "greets the world" do
    assert HelloElixir.hello() == :world
  end

  test "get test" do
    HelloElixir.Http.get("https://www.baidu.com")
    .body
    |> IO.inspect
  end
end
