# typed: strong

module HanzoAI
  module Resources
    class Batches
      sig { returns(HanzoAI::Resources::Batches::Cancel) }
      attr_reader :cancel

      # Create large batches of API requests for asynchronous processing. This is the
      #   equivalent of POST https://api.openai.com/v1/batch Supports Identical Params as:
      #   https://platform.openai.com/docs/api-reference/batch
      #
      #   Example Curl
      #
      #   ```
      #   curl http://localhost:4000/v1/batches         -H "Authorization: Bearer sk-1234"         -H "Content-Type: application/json"         -d '{
      #           "input_file_id": "file-abc123",
      #           "endpoint": "/v1/chat/completions",
      #           "completion_window": "24h"
      #   }'
      #   ```
      sig do
        params(
          provider: T.nilable(String),
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def create(provider: nil, request_options: {})
      end

      # Retrieves a batch. This is the equivalent of GET
      #   https://api.openai.com/v1/batches/{batch_id} Supports Identical Params as:
      #   https://platform.openai.com/docs/api-reference/batch/retrieve
      #
      #   Example Curl
      #
      #   ```
      #   curl http://localhost:4000/v1/batches/batch_abc123     -H "Authorization: Bearer sk-1234"     -H "Content-Type: application/json"
      #   ```
      sig do
        params(
          batch_id: String,
          provider: T.nilable(String),
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def retrieve(
        # The ID of the batch to retrieve
        batch_id,
        provider: nil,
        request_options: {}
      )
      end

      # Lists This is the equivalent of GET https://api.openai.com/v1/batches/ Supports
      #   Identical Params as: https://platform.openai.com/docs/api-reference/batch/list
      #
      #   Example Curl
      #
      #   ```
      #   curl http://localhost:4000/v1/batches?limit=2     -H "Authorization: Bearer sk-1234"     -H "Content-Type: application/json"
      #   ```
      sig do
        params(
          after: T.nilable(String),
          limit: T.nilable(Integer),
          provider: T.nilable(String),
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def list(after: nil, limit: nil, provider: nil, request_options: {})
      end

      # Cancel a batch. This is the equivalent of POST
      #   https://api.openai.com/v1/batches/{batch_id}/cancel
      #
      #   Supports Identical Params as:
      #   https://platform.openai.com/docs/api-reference/batch/cancel
      #
      #   Example Curl
      #
      #   ```
      #   curl http://localhost:4000/v1/batches/batch_abc123/cancel         -H "Authorization: Bearer sk-1234"         -H "Content-Type: application/json"         -X POST
      #
      #   ```
      sig do
        params(
          batch_id: String,
          provider: String,
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def cancel_with_provider(batch_id, provider:, request_options: {})
      end

      # Create large batches of API requests for asynchronous processing. This is the
      #   equivalent of POST https://api.openai.com/v1/batch Supports Identical Params as:
      #   https://platform.openai.com/docs/api-reference/batch
      #
      #   Example Curl
      #
      #   ```
      #   curl http://localhost:4000/v1/batches         -H "Authorization: Bearer sk-1234"         -H "Content-Type: application/json"         -d '{
      #           "input_file_id": "file-abc123",
      #           "endpoint": "/v1/chat/completions",
      #           "completion_window": "24h"
      #   }'
      #   ```
      sig do
        params(
          provider: String,
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def create_with_provider(provider, request_options: {})
      end

      # Lists This is the equivalent of GET https://api.openai.com/v1/batches/ Supports
      #   Identical Params as: https://platform.openai.com/docs/api-reference/batch/list
      #
      #   Example Curl
      #
      #   ```
      #   curl http://localhost:4000/v1/batches?limit=2     -H "Authorization: Bearer sk-1234"     -H "Content-Type: application/json"
      #   ```
      sig do
        params(
          provider: String,
          after: T.nilable(String),
          limit: T.nilable(Integer),
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def list_with_provider(provider, after: nil, limit: nil, request_options: {})
      end

      # Retrieves a batch. This is the equivalent of GET
      #   https://api.openai.com/v1/batches/{batch_id} Supports Identical Params as:
      #   https://platform.openai.com/docs/api-reference/batch/retrieve
      #
      #   Example Curl
      #
      #   ```
      #   curl http://localhost:4000/v1/batches/batch_abc123     -H "Authorization: Bearer sk-1234"     -H "Content-Type: application/json"
      #   ```
      sig do
        params(
          batch_id: String,
          provider: String,
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def retrieve_with_provider(
        # The ID of the batch to retrieve
        batch_id,
        provider:,
        request_options: {}
      )
      end

      sig { params(client: HanzoAI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
