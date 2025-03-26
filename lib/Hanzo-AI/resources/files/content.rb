# frozen_string_literal: true

module HanzoAI
  module Resources
    class Files
      class Content
        # Returns information about a specific file. that can be used across - Assistants
        #   API, Batch API This is the equivalent of GET
        #   https://api.openai.com/v1/files/{file_id}/content
        #
        #   Supports Identical Params as:
        #   https://platform.openai.com/docs/api-reference/files/retrieve-contents
        #
        #   Example Curl
        #
        #   ```
        #   curl http://localhost:4000/v1/files/file-abc123/content         -H "Authorization: Bearer sk-1234"
        #
        #   ```
        #
        # @param file_id [String]
        #
        # @param params [HanzoAI::Models::Files::ContentRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :provider
        #
        #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def retrieve(file_id, params)
          parsed, options = HanzoAI::Models::Files::ContentRetrieveParams.dump_request(params)
          provider =
            parsed.delete(:provider) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["%0s/v1/files/%1s/content", provider, file_id],
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
