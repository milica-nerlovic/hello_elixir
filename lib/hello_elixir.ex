defmodule HelloElixir do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      supervisor(GRPC.Server.Supervisor, [{Helloworld.Greeter.Server, 50055}])
    ]

    opts = [strategy: :one_for_one, name: HelloElixir]
    Supervisor.start_link(children, opts)
  end
end
