# frozen_string_literal: true

module HanzoAI
  module Resources
    class Config
      # @return [HanzoAI::Resources::Config::PassThroughEndpoint]
      attr_reader :pass_through_endpoint

      # @param client [HanzoAI::Client]
      def initialize(client:)
        @client = client
        @pass_through_endpoint = HanzoAI::Resources::Config::PassThroughEndpoint.new(client: client)
      end
    end
  end
end
