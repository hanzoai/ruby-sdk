# frozen_string_literal: true

module HanzoAI
  module Resources
    class Audio
      # @return [HanzoAI::Resources::Audio::Speech]
      attr_reader :speech

      # @return [HanzoAI::Resources::Audio::Transcriptions]
      attr_reader :transcriptions

      # @param client [HanzoAI::Client]
      def initialize(client:)
        @client = client
        @speech = HanzoAI::Resources::Audio::Speech.new(client: client)
        @transcriptions = HanzoAI::Resources::Audio::Transcriptions.new(client: client)
      end
    end
  end
end
