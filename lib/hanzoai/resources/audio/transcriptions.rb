# frozen_string_literal: true

module Hanzoai
  module Resources
    class Audio
      class Transcriptions
        # Same params as:
        #
        #   https://platform.openai.com/docs/api-reference/audio/createTranscription?lang=curl
        #
        # @param params [Hanzoai::Models::Audio::TranscriptionCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [IO, StringIO] :file
        #
        #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def create(params)
          parsed, options = Hanzoai::Models::Audio::TranscriptionCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/audio/transcriptions",
            headers: {"content-type" => "multipart/form-data"},
            body: parsed,
            model: Hanzoai::Unknown,
            options: options
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
