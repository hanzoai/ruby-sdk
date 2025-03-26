# frozen_string_literal: true

module Hanzoai
  module Resources
    class Config
      # @return [Hanzoai::Resources::Config::PassThroughEndpoint]
      attr_reader :pass_through_endpoint

      # @param client [Hanzoai::Client]
      def initialize(client:)
        @client = client
        @pass_through_endpoint = Hanzoai::Resources::Config::PassThroughEndpoint.new(client: client)
      end
    end
  end
end
