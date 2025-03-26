# typed: strong

module HanzoAI
  module Resources
    class Images
      sig { returns(HanzoAI::Resources::Images::Generations) }
      attr_reader :generations

      sig { params(client: HanzoAI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
