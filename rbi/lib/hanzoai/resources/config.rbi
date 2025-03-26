# typed: strong

module Hanzoai
  module Resources
    class Config
      sig { returns(Hanzoai::Resources::Config::PassThroughEndpoint) }
      attr_reader :pass_through_endpoint

      sig { params(client: Hanzoai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
