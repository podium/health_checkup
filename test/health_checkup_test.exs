defmodule HealthCheckupTest do
  use ExUnit.Case
  doctest HealthCheckup

  test "greets the world" do
    assert HealthCheckup.hello() == :world
  end
end
