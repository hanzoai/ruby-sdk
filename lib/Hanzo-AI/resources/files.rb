# frozen_string_literal: true

module HanzoAI
  module Resources
    class Files
      # @return [HanzoAI::Resources::Files::Content]
      attr_reader :content

      # Upload a file that can be used across - Assistants API, Batch API This is the
      #   equivalent of POST https://api.openai.com/v1/files
      #
      #   Supports Identical Params as:
      #   https://platform.openai.com/docs/api-reference/files/create
      #
      #   Example Curl
      #
      #   ```
      #   curl http://localhost:4000/v1/files         -H "Authorization: Bearer sk-1234"         -F purpose="batch"         -F file="@mydata.jsonl"
      #
      #   ```
      #
      # @param provider [String]
      #
      # @param params [HanzoAI::Models::FileCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [IO, StringIO] :file
      #
      #   @option params [String] :purpose
      #
      #   @option params [String] :custom_llm_provider
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(provider, params)
        parsed, options = HanzoAI::Models::FileCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["%0s/v1/files", provider],
          headers: {"content-type" => "multipart/form-data"},
          body: parsed,
          model: HanzoAI::Unknown,
          options: options
        )
      end

      # Returns information about a specific file. that can be used across - Assistants
      #   API, Batch API This is the equivalent of GET
      #   https://api.openai.com/v1/files/{file_id}
      #
      #   Supports Identical Params as:
      #   https://platform.openai.com/docs/api-reference/files/retrieve
      #
      #   Example Curl
      #
      #   ```
      #   curl http://localhost:4000/v1/files/file-abc123         -H "Authorization: Bearer sk-1234"
      #
      #   ```
      #
      # @param file_id [String]
      #
      # @param params [HanzoAI::Models::FileRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :provider
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def retrieve(file_id, params)
        parsed, options = HanzoAI::Models::FileRetrieveParams.dump_request(params)
        provider =
          parsed.delete(:provider) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["%0s/v1/files/%1s", provider, file_id],
          model: HanzoAI::Unknown,
          options: options
        )
      end

      # Returns information about a specific file. that can be used across - Assistants
      #   API, Batch API This is the equivalent of GET https://api.openai.com/v1/files/
      #
      #   Supports Identical Params as:
      #   https://platform.openai.com/docs/api-reference/files/list
      #
      #   Example Curl
      #
      #   ```
      #   curl http://localhost:4000/v1/files        -H "Authorization: Bearer sk-1234"
      #
      #   ```
      #
      # @param provider [String]
      #
      # @param params [HanzoAI::Models::FileListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :purpose
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def list(provider, params = {})
        parsed, options = HanzoAI::Models::FileListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["%0s/v1/files", provider],
          query: parsed,
          model: HanzoAI::Unknown,
          options: options
        )
      end

      # Deletes a specified file. that can be used across - Assistants API, Batch API
      #   This is the equivalent of DELETE https://api.openai.com/v1/files/{file_id}
      #
      #   Supports Identical Params as:
      #   https://platform.openai.com/docs/api-reference/files/delete
      #
      #   Example Curl
      #
      #   ```
      #   curl http://localhost:4000/v1/files/file-abc123     -X DELETE     -H "Authorization: Bearer $OPENAI_API_KEY"
      #
      #   ```
      #
      # @param file_id [String]
      #
      # @param params [HanzoAI::Models::FileDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :provider
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def delete(file_id, params)
        parsed, options = HanzoAI::Models::FileDeleteParams.dump_request(params)
        provider =
          parsed.delete(:provider) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["%0s/v1/files/%1s", provider, file_id],
          model: HanzoAI::Unknown,
          options: options
        )
      end

      # @param client [HanzoAI::Client]
      def initialize(client:)
        @client = client
        @content = HanzoAI::Resources::Files::Content.new(client: client)
      end
    end
  end
end
