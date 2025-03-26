# frozen_string_literal: true

module Hanzoai
  module Resources
    class FineTuning
      # @return [Hanzoai::Resources::FineTuning::Jobs]
      attr_reader :jobs

      # @param client [Hanzoai::Client]
      def initialize(client:)
        @client = client
        @jobs = Hanzoai::Resources::FineTuning::Jobs.new(client: client)
      end
    end
  end
end
