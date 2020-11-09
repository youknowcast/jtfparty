defmodule JtfpartyWeb.SessionController do
  use JtfpartyWeb, :controller

  alias Jtfparty.Sessions
  alias Jtfparty.Sessions.Session

  def index(conn, _params) do
    sessions = Sessions.list_sessions()
    render(conn, "index.html", sessions: sessions)
  end

  defp new(conn, _params) do
    changeset = Sessions.change_session(%Session{})
    render(conn, "new.html", changeset: changeset)
  end

  defp create(conn, %{"session" => session_params}) do
    case Sessions.create_session(session_params) do
      {:ok, session} ->
        conn
        |> put_flash(:info, "Session created successfully.")
        |> redirect(to: Routes.session_path(conn, :show, session))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    session = Sessions.get_session!(id)
    render(conn, "show.html", session: session)
  end

  defp edit(conn, %{"id" => id}) do
    session = Sessions.get_session!(id)
    changeset = Sessions.change_session(session)
    render(conn, "edit.html", session: session, changeset: changeset)
  end

  defp update(conn, %{"id" => id, "session" => session_params}) do
    session = Sessions.get_session!(id)

    case Sessions.update_session(session, session_params) do
      {:ok, session} ->
        conn
        |> put_flash(:info, "Session updated successfully.")
        |> redirect(to: Routes.session_path(conn, :show, session))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", session: session, changeset: changeset)
    end
  end

  defp delete(conn, %{"id" => id}) do
    session = Sessions.get_session!(id)
    {:ok, _session} = Sessions.delete_session(session)

    conn
    |> put_flash(:info, "Session deleted successfully.")
    |> redirect(to: Routes.session_path(conn, :index))
  end
end
