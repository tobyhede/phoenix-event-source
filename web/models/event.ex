defmodule EventSource.Event do
  use EventSource.Web, :model

  schema "events" do
    field :type, :string
    field :body, :string
    field :partition, :integer

    timestamps
  end

  @required_fields ~w(type body)
  @optional_fields ~w(partition)

  # def decode_data(event) do
  #   event |> Map.put(:data, Poison.decode!(event.data))
  # end


  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
