defmodule Mix.Tasks.Friends.CreatePerson do
  @moduledoc "The friends mix task: `mix help friends`"
  use Mix.Task

  @requirements ["app.start"]

  @shortdoc "Simply calls the Friends.create_person/2 function."
  def run([first_name, last_name, age]) do
    Friends.create_person(%{first_name: first_name, last_name: last_name, age: age})
  end
end
