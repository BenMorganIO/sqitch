use Mix.Config

if Mix.env == :test do
  config :sqitch, :system,
    stderr_to_stdout: true
else
  config :sqitch, :system,
    into: IO.stream(:stdio, :line)
end
