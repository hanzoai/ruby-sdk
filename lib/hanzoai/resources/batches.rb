# frozen_string_literal: true

module Hanzoai
  module Resources
    class Batches
      # @return [Hanzoai::Resources::Batches::Cancel]
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
      #
      # @param params [Hanzoai::Models::BatchCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :provider
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(params = {})
        parsed, options = Hanzoai::Models::BatchCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/batches",
          query: parsed,
          model: Hanzoai::Unknown,
          options: options
        )
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
      #
      # @param batch_id [String] The ID of the batch to retrieve
      #
      # @param params [Hanzoai::Models::BatchRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :provider
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def retrieve(batch_id, params = {})
        parsed, options = Hanzoai::Models::BatchRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["v1/batches/%0s", batch_id],
          query: parsed,
          model: Hanzoai::Unknown,
          options: options
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
      #
      # @param params [Hanzoai::Models::BatchListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :after
      #
      #   @option params [Integer, nil] :limit
      #
      #   @option params [String, nil] :provider
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def list(params = {})
        parsed, options = Hanzoai::Models::BatchListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/batches",
          query: parsed,
          model: Hanzoai::Unknown,
          options: options
        )
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
      #
      # @param batch_id [String]
      #
      # @param params [Hanzoai::Models::BatchCancelWithProviderParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :provider
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def cancel_with_provider(batch_id, params)
        parsed, options = Hanzoai::Models::BatchCancelWithProviderParams.dump_request(params)
        provider =
          parsed.delete(:provider) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :post,
          path: ["%0s/v1/batches/%1s/cancel", provider, batch_id],
          model: Hanzoai::Unknown,
          options: options
        )
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
      #
      # @param provider [String]
      #
      # @param params [Hanzoai::Models::BatchCreateWithProviderParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create_with_provider(provider, params = {})
        @client.request(
          method: :post,
          path: ["%0s/v1/batches", provider],
          model: Hanzoai::Unknown,
          options: params[:request_options]
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
      #
      # @param provider [String]
      #
      # @param params [Hanzoai::Models::BatchListWithProviderParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :after
      #
      #   @option params [Integer, nil] :limit
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def list_with_provider(provider, params = {})
        parsed, options = Hanzoai::Models::BatchListWithProviderParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["%0s/v1/batches", provider],
          query: parsed,
          model: Hanzoai::Unknown,
          options: options
        )
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
      #
      # @param batch_id [String] The ID of the batch to retrieve
      #
      # @param params [Hanzoai::Models::BatchRetrieveWithProviderParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :provider
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def retrieve_with_provider(batch_id, params)
        parsed, options = Hanzoai::Models::BatchRetrieveWithProviderParams.dump_request(params)
        provider =
          parsed.delete(:provider) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["%0s/v1/batches/%1s", provider, batch_id],
          model: Hanzoai::Unknown,
          options: options
        )
      end

      # @param client [Hanzoai::Client]
      def initialize(client:)
        @client = client
        @cancel = Hanzoai::Resources::Batches::Cancel.new(client: client)
      end
    end
  end
end
