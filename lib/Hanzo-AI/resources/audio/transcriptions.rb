# frozen_string_literal: true

module HanzoAI
  module Resources
    class Audio
      class Transcriptions
        # Same params as:
        #
        #   https://platform.openai.com/docs/api-reference/audio/createTranscription?lang=curl
        #
        # @param params [HanzoAI::Models::Audio::TranscriptionCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [IO, StringIO] :file
        #
        #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def create(params)
          parsed, options = HanzoAI::Models::Audio::TranscriptionCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/audio/transcriptions",
            headers: {"content-type" => "multipart/form-data"},
            body: parsed,
            model: HanzoAI::Unknown,
            options: options
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
