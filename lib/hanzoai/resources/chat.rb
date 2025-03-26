# frozen_string_literal: true

module Hanzoai
  module Resources
    class Chat
      # @return [Hanzoai::Resources::Chat::Completions]
      attr_reader :completions

      # @param client [Hanzoai::Client]
      def initialize(client:)
        @client = client
        @completions = Hanzoai::Resources::Chat::Completions.new(client: client)
      end
    end
  end
end
