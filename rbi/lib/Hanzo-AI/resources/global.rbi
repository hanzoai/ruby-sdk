# typed: strong

module HanzoAI
  module Resources
    class Global
      sig { returns(HanzoAI::Resources::Global::Spend) }
      attr_reader :spend

      sig { params(client: HanzoAI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
