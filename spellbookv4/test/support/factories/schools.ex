defmodule Spellbookv4.Factories.SchoolFactory do
  defmacro __using__(_opts) do
    quote do
      alias Faker.{Internet, Lorem, Person}
      alias Spellbookv4.Schools.Entities.School

      def school_factory(attrs) do
        name = Map.get(attrs, :name, Lorem.sentence(8..16))

        %School{
          name: name
        }
      end
    end
  end
end
