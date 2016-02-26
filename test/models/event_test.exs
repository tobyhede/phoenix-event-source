defmodule EventSource.EventTest do
  use EventSource.ModelCase

  alias EventSource.Event

  @body %{blah: "blah", vtha: "vtha", value: 42}
  @valid_attrs %{body: Poison.encode!(@body), type: "event"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Event.changeset(%Event{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Event.changeset(%Event{}, @invalid_attrs)
    refute changeset.valid?
  end

  setup do
    {:ok, _} = Event.changeset(%Event{}, @valid_attrs)
                |> Repo.insert
    :ok
  end

  test "with events" do
    events = Event |> Repo.all
    assert events == 1
  end


end
