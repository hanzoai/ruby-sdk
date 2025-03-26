# frozen_string_literal: true

module Hanzoai
  module Resources
    class Audio
      class Speech
        # Same params as:
        #
        #   https://platform.openai.com/docs/api-reference/audio/createSpeech
        #
        # @param params [Hanzoai::Models::Audio::SpeechCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def create(params = {})
          @client.request(
            method: :post,
            path: "v1/audio/speech",
            model: Hanzoai::Unknown,
            options: params[:request_options]
          )
        end

        # @param client [Hanzoai::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
