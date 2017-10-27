defmodule Sqitch do
  @moduledoc """
  Sqitch is a semi-sane way to manage databases. This module here is all about
  integrating with the power of Sqitch.
  """

  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([], strategy: :one_for_one, name: Sqitch.Supervisor)
  end
end
