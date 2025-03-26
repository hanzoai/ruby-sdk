# typed: strong

module Hanzoai
  module Resources
    class Images
      sig { returns(Hanzoai::Resources::Images::Generations) }
      attr_reader :generations

      sig { params(client: Hanzoai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
