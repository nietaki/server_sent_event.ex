defmodule ServerSentEvent.Mixfile do
  use Mix.Project

  def project do
    [
      app: :server_sent_event,
      version: "0.4.3",
      elixir: "~> 1.7",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      elixirc_options: [
        warnings_as_errors: true
      ],
      description: description(),
      docs: [extras: ["README.md"], main: "ServerSentEvent"],
      package: package()
    ]
  end

  def application do
    [extra_applications: [:logger, :ssl]]
  end

  defp deps do
    [
      {:raxx, "~> 0.16.0"},
      {:dialyxir, "~> 0.5", only: [:dev, :test], runtime: false},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp description do
    """
    Push updates to web clients over HTTP, using dedicated server-push protocol.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*"],
      maintainers: ["Peter Saxton"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/CrowdHailer/server_sent_event.ex"}
    ]
  end
end
