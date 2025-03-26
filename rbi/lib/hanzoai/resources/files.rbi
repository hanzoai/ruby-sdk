# typed: strong

module Hanzoai
  module Resources
    class Files
      sig { returns(Hanzoai::Resources::Files::Content) }
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
      sig do
        params(
          provider: String,
          file: T.any(IO, StringIO),
          purpose: String,
          custom_llm_provider: String,
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def create(provider, file:, purpose:, custom_llm_provider: nil, request_options: {})
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
      sig do
        params(
          file_id: String,
          provider: String,
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def retrieve(file_id, provider:, request_options: {})
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
      sig do
        params(
          provider: String,
          purpose: T.nilable(String),
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def list(provider, purpose: nil, request_options: {})
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
      sig do
        params(
          file_id: String,
          provider: String,
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def delete(file_id, provider:, request_options: {})
      end

      sig { params(client: Hanzoai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
