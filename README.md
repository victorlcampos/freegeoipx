# Freegeoipx

**Api Client for freegeoip.net**

## Installation

  1. Add `freegeoipx` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:freegeoipx, "~> 0.1.0"}]
    end
    ```

  2. Ensure `freegeoipx` is started before your application:

    ```elixir
    def application do
      [applications: [:freegeoipx]]
    end
    ```

## How to use

```elixir
alias Freegeoipx.Client
alias Freegeoipx.Resource.Json

Client.query(%Client{}, %Json{id: "github.com"})

{:ok,
 %{"city" => "San Francisco", "country_code" => "US",
   "country_name" => "United States", "ip" => "192.30.253.112",
   "latitude" => 37.7697, "longitude" => -122.3933, "metro_code" => 807,
   "region_code" => "CA", "region_name" => "California",
   "time_zone" => "America/Los_Angeles", "zip_code" => "94107"}}
```
