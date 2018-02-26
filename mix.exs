defmodule HealthCheckup.Mixfile do
  use Mix.Project

  def project do
    [
      app: :health_checkup,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      description: description(),
      package: package()
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
      {:plug, "~> 1.0"}
    ]
  end

  defp description, do: "Generic health check endpoint for Phoenix web apps."

  defp package do
    [
      maintainers: ["Adam Jacox", "Podium"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/podium/health_checkup"}
    ]
  end
end
