# frozen_string_literal: true

module HanzoAI
  module Resources
    class Images
      # @return [HanzoAI::Resources::Images::Generations]
      attr_reader :generations

      # @param client [HanzoAI::Client]
      def initialize(client:)
        @client = client
        @generations = HanzoAI::Resources::Images::Generations.new(client: client)
      end
    end
  end
end
