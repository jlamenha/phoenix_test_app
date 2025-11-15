defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end

  def users(conn, _params) do
    users = [
      %{id: 1, name: "Alice", email: "alice@web.com"},
      %{id: 2, name: "Bob", email: "bob@web.com"}
    ]

    json(conn, %{users: users})
  end
end
