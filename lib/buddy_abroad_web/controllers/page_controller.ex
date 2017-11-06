defmodule BuddyAbroadWeb.PageController do
  use BuddyAbroadWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
