# frozen_string_literal: true

module HanzoAI
  module Resources
    class FineTuning
      # @return [HanzoAI::Resources::FineTuning::Jobs]
      attr_reader :jobs

      # @param client [HanzoAI::Client]
      def initialize(client:)
        @client = client
        @jobs = HanzoAI::Resources::FineTuning::Jobs.new(client: client)
      end
    end
  end
end
