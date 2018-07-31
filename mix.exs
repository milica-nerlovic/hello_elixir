defmodule HelloElixir.Mixfile do
  use Mix.Project

  def project do
    [
      app: :hello_elixir,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      mod: {HelloElixir, []},
      extra_applications: [:logger, :grpc_health_check]
    ]
  end

  defp deps do
    [
      {:protobuf, "~> 0.5.3"},
      {:grpc, github: "tony612/grpc-elixir", ref: "ad8c47810f8d9826d82ea41330846bc2c252a2ae"},
      {:grpc_health_check, github: "renderedtext/grpc_health_check", ref: "mn/standalone-application"}
    ]
  end
end
