defmodule UcxChat.SubscriptionTest do
  use UcxChat.ModelCase

  alias UcxChat.Subscription

  @valid_attrs %{user_id: 1, channel_id: 1}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Subscription.changeset(%Subscription{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Subscription.changeset(%Subscription{}, @invalid_attrs)
    refute changeset.valid?
  end
end
