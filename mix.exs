defmodule Sqitch.Mixfile do
  use Mix.Project

  def project do
    [
      app: :sqitch,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      config_path: "config/config.exs",
      deps: [],
      package: package()
    ]
  end

  def application, do: [extra_applications: [:logger]]

  defp package do
    [
      description: """
      Sqitch is a semi-sane way to manage databases.
      This module here is all about integrating with the power of Sqitch.
      """,
      files: ~w(lib mix.exs README.md),
      homepage_url: "https://hexdocs.pm/sqitch",
      licenses: ["MIT"],
      links: %{
        github: "https://github.com/BenMorganIO/sqitch",
        docs: "https://hexdocs.pm/sqitch"
      },
      maintainers: ["Ben A. Morgan <ben@benmorgan.io>"],
      source_url: "https://github.com/BenMorganIO/sqitch"
    ]
  end
end
