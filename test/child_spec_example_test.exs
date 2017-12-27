defmodule ChildSpecExampleTest do
  use ExUnit.Case
  doctest ChildSpecExample

  test "greets the world" do
    assert ChildSpecExample.hello() == :world
  end
end
