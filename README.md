# ServerSentEvent

**To enable servers to push event data to Web pages over HTTP or using dedicated server-push protocols.**

Documentation available on [hexdoc](https://hexdocs.pm/server_sent_event/index.html).

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `server_sent_event` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:server_sent_event, "~> 0.1.0"}]
    end
    ```

  2. Ensure `server_sent_event` is started before your application:

    ```elixir
    def application do
      [applications: [:server_sent_event]]
    end
    ```
