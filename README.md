# Sqitch

Sqitch is a semi-sane way to manage databases. This module here is all about
integrating with the power of Sqitch.

This project has no dependencies :D

## Installation

You can add this package by adding it to your deps in `mix.exs`:

```elixir
def deps do
  [
    {:sqitch, "~> 0.1.0", runtime: false,  only: [:dev, :test]}
  ]
end
```

## Ecto

To alias this guy to your Ecto setup we need to do two things.

1. Tell Sqitch where your sqitch app is located so that we can cd into there and
  execute commands for you. All options are the same as the `System.cmd/2`
  function.

    ```elixir
    # config/dev.exs and config/test.exs

    config :sqitch, :system,
      into: IO.stream(:stdio, :line),
      cd: "my_sqitch_app"
    ```

2. Now that the sqitch task knows where to look for your sqitch project we can
  alias it to `ecto.migrate` and make running migrations easier for you.

    ```elixir
    # mix.exs

    defp aliases do
      [
        "ecto.migrate": "sqitch deploy --target #{Mix.env}",
        "ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
        "ecto.reset": ["ecto.drop", "ecto.setup"]
      ]
    end
    ```
