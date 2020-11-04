# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Jtfparty.Repo.insert!(%Jtfparty.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Jtfparty.Repo
alias Jtfparty.Event

# Events
event = Event.changeset(%Event{}, %{ name: "JTF2021w" })
Repo.insert!(event)

