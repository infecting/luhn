defmodule Luhn.MixProject do
  use Mix.Project

  def project do
    [
      app: :luhn,
      version: "0.1.0",
     description: "Generate, and validate luhn valid numbers quickly and efficiently",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      name: "luhnacy",
      deps: deps(),
      package: package(),
      source_url: "https://github.com/infecting/luhn"
    ]
  end

  defp package do
    [
      name: "luhnacy",
      links: %{"Github" => "https://github.com/infecting/luhn"},
      licenses: ["Apache-2.0"],
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end
end
