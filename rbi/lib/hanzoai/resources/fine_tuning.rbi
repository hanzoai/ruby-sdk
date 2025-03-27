# typed: strong

module Hanzoai
  module Resources
    class FineTuning
      sig { returns(Hanzoai::Resources::FineTuning::Jobs) }
      attr_reader :jobs

      sig { params(client: Hanzoai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
