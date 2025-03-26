# frozen_string_literal: true

module Hanzoai
  module Resources
    class Files
      # @return [Hanzoai::Resources::Files::Content]
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
      # @param params [Hanzoai::Models::FileCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [IO, StringIO] :file
      #
      #   @option params [String] :purpose
      #
      #   @option params [String] :custom_llm_provider
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(provider, params)
        parsed, options = Hanzoai::Models::FileCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["%0s/v1/files", provider],
          headers: {"content-type" => "multipart/form-data"},
          body: parsed,
          model: Hanzoai::Unknown,
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
      # @param params [Hanzoai::Models::FileRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :provider
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def retrieve(file_id, params)
        parsed, options = Hanzoai::Models::FileRetrieveParams.dump_request(params)
        provider =
          parsed.delete(:provider) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["%0s/v1/files/%1s", provider, file_id],
          model: Hanzoai::Unknown,
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
      # @param params [Hanzoai::Models::FileListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :purpose
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def list(provider, params = {})
        parsed, options = Hanzoai::Models::FileListParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["%0s/v1/files", provider],
          query: parsed,
          model: Hanzoai::Unknown,
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
      # @param params [Hanzoai::Models::FileDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :provider
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def delete(file_id, params)
        parsed, options = Hanzoai::Models::FileDeleteParams.dump_request(params)
        provider =
          parsed.delete(:provider) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["%0s/v1/files/%1s", provider, file_id],
          model: Hanzoai::Unknown,
          options: options
        )
      end

      # @param client [Hanzoai::Client]
      def initialize(client:)
        @client = client
        @content = Hanzoai::Resources::Files::Content.new(client: client)
      end
    end
  end
end
