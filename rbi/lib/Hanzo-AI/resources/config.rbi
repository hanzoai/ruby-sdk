# typed: strong

module HanzoAI
  module Resources
    class Config
      sig { returns(HanzoAI::Resources::Config::PassThroughEndpoint) }
      attr_reader :pass_through_endpoint

      sig { params(client: HanzoAI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
