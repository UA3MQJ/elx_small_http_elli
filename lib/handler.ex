defmodule ElliTest.Handler do
  @behaviour :elli_handler
  require Logger

  def handle(req, _args) do
    handle(:elli_request.method(req), :elli_request.path(req), req)
  end
  
  def handle(:GET, [], _req), do: ok("")
  def handle(:GET, [path], _req), do: ok(path)
  def handle(_, _, _), do: not_found()

  def handle_event(:elli_startup, [], _) do
    Logger.info ":elli starting up"
    :ok
  end

  def handle_event(_event, _, _), do: :ok

  defp not_found(), do: {404, [{"Server", "elli"}], ""}

  defp ok(resp) do
    {200,
     [{"Server", "elli"},
      {"Content-Type", "text/plain"},
      {"Connection", "close"}],
      "Hi there, I love " <> resp <> "!"}
  end

end