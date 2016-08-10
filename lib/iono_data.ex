defmodule IonoData do
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(Iono.Repo, [])
    ]
  end
end
