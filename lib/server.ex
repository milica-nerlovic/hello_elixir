defmodule Helloworld.Greeter.Server do
  use GRPC.Server, service: Example.ExampleService.Service

  def say_hello(request, _stream) do
    Example.ExampleResponse.new(message: "Hello #{request.message}")
  end
end
