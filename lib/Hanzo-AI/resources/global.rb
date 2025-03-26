# frozen_string_literal: true

module HanzoAI
  module Resources
    class Global
      # @return [HanzoAI::Resources::Global::Spend]
      attr_reader :spend

      # @param client [HanzoAI::Client]
      def initialize(client:)
        @client = client
        @spend = HanzoAI::Resources::Global::Spend.new(client: client)
      end
    end
  end
end
