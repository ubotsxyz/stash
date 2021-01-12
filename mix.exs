defmodule Stash.MixProject do
  use Mix.Project

  def project do
    [
      app: :stash,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:redix, "~> 1.0"},
      {:con_cache, "~> 0.13"},

      # Dev & Test
      {:dialyxir, "~> 1.0", only: :dev, runtime: false}
    ]
  end
end
