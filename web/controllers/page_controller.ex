defmodule EventSource.PageController do
  use EventSource.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
