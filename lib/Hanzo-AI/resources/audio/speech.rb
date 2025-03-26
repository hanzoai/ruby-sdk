# frozen_string_literal: true

module HanzoAI
  module Resources
    class Audio
      class Speech
        # Same params as:
        #
        #   https://platform.openai.com/docs/api-reference/audio/createSpeech
        #
        # @param params [HanzoAI::Models::Audio::SpeechCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def create(params = {})
          @client.request(
            method: :post,
            path: "v1/audio/speech",
            model: HanzoAI::Unknown,
            options: params[:request_options]
          )
        end

        # @param client [HanzoAI::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
