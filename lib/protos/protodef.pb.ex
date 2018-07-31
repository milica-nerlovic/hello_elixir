defmodule Example.ExampleRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
    message: String.t
  }
  defstruct [:message]

  field :message, 1, type: :string
end

defmodule Example.ExampleResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
    message: String.t
  }
  defstruct [:message]

  field :message, 1, type: :string
end

defmodule Example.ExampleService.Service do
  @moduledoc false
  use GRPC.Service, name: "Example.ExampleService"

  rpc :SayHello, Example.ExampleRequest, Example.ExampleResponse
end

defmodule Example.ExampleService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Example.ExampleService.Service
end

