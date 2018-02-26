defmodule HealthCheckupTest do
  use ExUnit.Case
  use Plug.Test

  test "it should return a 200 success response with default resp_body" do
    # Create a test connection
    opts = HealthCheckup.init([])
    conn = conn(:get, "/health")

    # Invoke the plug
    conn = HealthCheckup.call(conn, opts)

    # Assert the response and status
    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "Server's Up!"
  end

  test "it should return a custom response body" do
    # Create a test connection
    opts = HealthCheckup.init([resp_body: "Testing 123"])
    conn = conn(:get, "/health")

    # Invoke the plug
    conn = HealthCheckup.call(conn, opts)

    # Assert the response and status
    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "Testing 123"
  end
end
