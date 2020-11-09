defmodule JtfpartyWeb.PageController do
  use JtfpartyWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"id" => id}) do
    #FIXME validation

    render(conn, "#{id}.html")
  end
end
