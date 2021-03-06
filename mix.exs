defmodule Freegeoipx.Mixfile do
  use Mix.Project

  def project do
    [app: :freegeoipx,
     version: "0.0.2",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     package: package]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :rapidax]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:rapidax, "~> 0.0.6"}]
  end

  defp package do
    [# These are the default files included in the package
     files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
     maintainers: ["Victor Lima Campos"],
     licenses: ["Apache 2.0"],
     description: "Api Client for freegeoip.net",
     links: %{"GitHub" => "https://github.com/victorlcampos/freegeoipx",
              "Issues" => "https://github.com/victorlcampos/freegeoipx/issues"}]
  end
end
