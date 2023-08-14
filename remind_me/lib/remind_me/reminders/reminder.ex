defmodule RemindMe.Reminders.Reminder do
  use Ecto.Schema
  import Ecto.Changeset

  schema "reminder" do
    field :content, :string

    timestamps()
  end

  @doc false
  def changeset(reminder, attrs) do
    reminder
    |> cast(attrs, [:content])
    |> validate_required([:content])
  end
end
