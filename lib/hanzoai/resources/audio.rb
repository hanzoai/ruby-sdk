# frozen_string_literal: true

module Hanzoai
  module Resources
    class Audio
      # @return [Hanzoai::Resources::Audio::Speech]
      attr_reader :speech

      # @return [Hanzoai::Resources::Audio::Transcriptions]
      attr_reader :transcriptions

      # @param client [Hanzoai::Client]
      def initialize(client:)
        @client = client
        @speech = Hanzoai::Resources::Audio::Speech.new(client: client)
        @transcriptions = Hanzoai::Resources::Audio::Transcriptions.new(client: client)
      end
    end
  end
end
