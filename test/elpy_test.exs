defmodule ElpyTest do
  use ExUnit.Case
  doctest Elpy

  test "greets the world" do
    assert Elpy.hello() == :world
  end
end
