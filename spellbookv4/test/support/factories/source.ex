defmodule Spellbookv4.Factories.SourceFactory do
  defmacro __using__(_opts) do
    quote do
      alias Faker.{Internet, Lorem, Person}
      alias Spellbookv4.Sources.Entities.Source

      def source_factory(attrs) do
        name = Map.get(attrs, :name, Lorem.sentence(8..16))

        %Source{
          name: name
        }
      end
    end
  end
end
