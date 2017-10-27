defmodule Sqitch.Mixfile do
  use Mix.Project

  def project do
    [
      app: :sqitch,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      config_path: "config/config.exs",
      deps: []
    ]
  end

  def application, do: [extra_applications: [:logger]]
end
