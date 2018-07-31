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
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:protobuf, "~> 0.5.3"},
      {:grpc, github: "tony612/grpc-elixir"},
      {:grpc_health_check, github: "renderedtext/grpc_health_check", ref: "mn/standalone-application"}
    ]
  end
end
