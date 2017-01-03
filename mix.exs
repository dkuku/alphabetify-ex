defmodule Alphabetify.Mixfile do
  use Mix.Project

  def project do
    [app: :alphabetify,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  defp deps do
    []
  end

  defp description do
    """
    Create an alphabetical hash. Taking an existing alphabetic hash (of any length),
    will return the next hash in sequence. If all characters in hash are rolled over,
    will append a new char (increase the length by 1.)
    eg. 'ZZZZ' -> 'AAAAA' eg. 'AAAZ' -> 'AABA'
    """
  end

  defp package do
    [# These are the default files included in the package
     name: :alphabetify,
     files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
     maintainers: ["Todd Resudek"],
     licenses: ["GPL 3.0"],
     links: %{"GitHub" => "https://github.com/supersimple/alphabetify-ex"}
   ]
  end
end