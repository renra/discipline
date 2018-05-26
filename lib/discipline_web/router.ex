defmodule DisciplineWeb.Router do
  use DisciplineWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", DisciplineWeb do
    pipe_through :api
  end
end
