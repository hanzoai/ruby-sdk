# frozen_string_literal: true

module Hanzoai
  module Resources
    class Global
      # @return [Hanzoai::Resources::Global::Spend]
      attr_reader :spend

      # @param client [Hanzoai::Client]
      def initialize(client:)
        @client = client
        @spend = Hanzoai::Resources::Global::Spend.new(client: client)
      end
    end
  end
end
