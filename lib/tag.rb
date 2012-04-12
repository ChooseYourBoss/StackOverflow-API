module API
  module StackOverflow
    class Tag
      include Comparable

      def <=>(anOther)
        name <=> anOther.name
      end

      attr_accessor :name, :count, :has_synonyms

      def initialize(so_tag)
        @name = so_tag["name"]
        @count = so_tag["count"]
        @has_synonyms = so_tag["has_synonyms"]
      end
    end
  end
end
