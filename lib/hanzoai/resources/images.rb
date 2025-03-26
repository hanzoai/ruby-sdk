# frozen_string_literal: true

module Hanzoai
  module Resources
    class Images
      # @return [Hanzoai::Resources::Images::Generations]
      attr_reader :generations

      # @param client [Hanzoai::Client]
      def initialize(client:)
        @client = client
        @generations = Hanzoai::Resources::Images::Generations.new(client: client)
      end
    end
  end
end
