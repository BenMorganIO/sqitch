defmodule Mix.Tasks.Sqitch do
  use Mix.Task

  @type cmd :: {Collectable.t, exit_status :: non_neg_integer}

  @shortdoc "Passes args from this mix task to the sqitch command."

  @spec run(list) :: cmd
  def run(args) do
    System.cmd "sqitch", args, Application.fetch_env!(:sqitch, :system)
  end
end
