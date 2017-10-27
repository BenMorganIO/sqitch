defmodule Mix.Tasks.SqitchTest do
  use ExUnit.Case, async: true

  alias Mix.Tasks.Sqitch

  test "will call sqitch" do
    {stdout, 0} = Sqitch.run(~w(--version))
    assert String.starts_with? stdout, "sqitch (App::Sqitch)"
  end
end
