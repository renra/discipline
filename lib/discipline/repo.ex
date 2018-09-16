defmodule Discipline.Repo do
  use Ecto.Repo, otp_app: :discipline

  @doc """
  Dynamically loads the repository url from the
  DATABASE_URL environment variable.
  """
  def init(_, opts) do
    {:ok, Keyword.put(opts, :url, System.get_env("DATABASE_URL"))}
  end

  def execute(sql, params) do
    Ecto.Adapters.SQL.query!(__MODULE__, sql, params)
  end
end
