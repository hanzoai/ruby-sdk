# frozen_string_literal: true

module HanzoAI
  module Resources
    class Chat
      # @return [HanzoAI::Resources::Chat::Completions]
      attr_reader :completions

      # @param client [HanzoAI::Client]
      def initialize(client:)
        @client = client
        @completions = HanzoAI::Resources::Chat::Completions.new(client: client)
      end
    end
  end
end
