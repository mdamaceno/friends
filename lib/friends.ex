defmodule Friends do
  alias Friends.{Person, Repo}

  def create_person(params \\ %{}) do
    person = %Person{}
    changeset = Person.changeset(person, %{first_name: params.first_name, last_name: params.last_name, age: params.age})

    Repo.insert!(changeset)
  end
end
