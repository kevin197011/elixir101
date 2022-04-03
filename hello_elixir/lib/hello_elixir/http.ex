defmodule HelloElixir.Http do
  @moduledoc false

  @doc """
  http get
  """
  def get(url) do
    http(url, "get")
  end

  # def post(url) do
  #   http(url, "post")
  # end

  defp http(url, method) do
    case method do
      "get" -> HTTPoison.get!(url)
      # "post" -> HTTPoison.post(url).response
      _ -> "oops"
    end
  end
end
