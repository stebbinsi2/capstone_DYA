defmodule RemindMe.Reminders.Reminder do
  use Ecto.Schema
  import Ecto.Changeset

  schema "reminder" do
    field :content, :string
    belongs_to :user, RemindMe.Accounts.User
    timestamps()
  end

  @doc false
  def changeset(reminder, attrs) do
    reminder
    |> cast(attrs, [:content, :user_id])
    |> validate_required([:content])
  end
end
