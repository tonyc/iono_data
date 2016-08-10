defmodule IonoData do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      # Define workers and child supervisors to be supervised
      # worker(Friends.Worker, [arg1, arg2, arg3]),
      worker(Iono.Repo, [])
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: IonoData.Supervisor]
    Supervisor.start_link(children, opts)


  end
end
