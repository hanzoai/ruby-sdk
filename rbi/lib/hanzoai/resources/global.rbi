# typed: strong

module Hanzoai
  module Resources
    class Global
      sig { returns(Hanzoai::Resources::Global::Spend) }
      attr_reader :spend

      sig { params(client: Hanzoai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
