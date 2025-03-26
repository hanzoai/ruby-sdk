# typed: strong

module HanzoAI
  module Resources
    class FineTuning
      sig { returns(HanzoAI::Resources::FineTuning::Jobs) }
      attr_reader :jobs

      sig { params(client: HanzoAI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
