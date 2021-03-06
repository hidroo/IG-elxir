defmodule Ig.MixProject do
  use Mix.Project

  def project do
    [
      app: :ig,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Ig.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.0"},
      {:floki, "~> 0.20.0"},
      {:download, "~> 0.0.4"},
      {:poison, "~> 3.1"},
      {:json, "~> 1.2"},
      {:mogrify_draw, "~> 0.1.0"}
      # {:selenium, "~> 1.1"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
