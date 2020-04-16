defmodule DeploymentExampleWeb.PageController do
  use DeploymentExampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
