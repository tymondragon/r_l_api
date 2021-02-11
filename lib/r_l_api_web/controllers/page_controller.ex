defmodule RLApiWeb.PageController do
  use RLApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
