# HealthCheckup

Generic health check endpoint for Phoenix/Plug web apps.

## Installation

The package can be installed by adding `health_checkup` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:health_checkup, "~> 0.1.0"}
  ]
end
```

## Usage

Add the following to your Phoenix `router.ex` file:

```elixir
forward "/_some_path", HealthCheckup, resp_body: "Custom response body"`
```

Note: the default `resp_body` is "Server's Up!"
