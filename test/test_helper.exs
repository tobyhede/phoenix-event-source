ExUnit.start

Mix.Task.run "ecto.create", ~w(-r EventSource.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r EventSource.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(EventSource.Repo)

