defmodule Phoenix.PubSub.RabbitMQ.Mixfile do
  use Mix.Project

  def project do
    [app: :phoenix_pubsub_rabbitmq,
     version: "0.0.1",
     elixir: "~> 1.0",
     description: description,
     package: package,
     source_url: "https://github.com/pma/phoenix_pubsub_rabbitmq",
     deps: deps,
     docs: [readme: "README.md", main: "README"]]
  end

  def application do
    [applications: [:logger, :amqp, :poolboy, :phoenix_pubsub]]
  end

  defp deps do
    [{:phoenix_pubsub, "~> 1.0"},
     {:poolboy, ">= 1.4.2"},
     {:amqp, git: "https://github.com/mtokioka/amqp.git"}]
  end

  defp description do
    """
    RabbitMQ adapter for the Phoenix framework PubSub layer.
    """
  end

  defp package do
    [files: ["lib", "mix.exs", "README.md", "LICENSE"],
     contributors: ["Paulo Almeida"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/pma/phoenix_pubsub_rabbitmq"}]
  end
end
