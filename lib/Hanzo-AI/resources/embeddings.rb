# frozen_string_literal: true

module HanzoAI
  module Resources
    class Embeddings
      # Follows the exact same API spec as
      #   `OpenAI's Embeddings API https://platform.openai.com/docs/api-reference/embeddings`
      #
      #   ```bash
      #   curl -X POST http://localhost:4000/v1/embeddings
      #   -H "Content-Type: application/json"
      #   -H "Authorization: Bearer sk-1234"
      #   -d '{
      #       "model": "text-embedding-ada-002",
      #       "input": "The quick brown fox jumps over the lazy dog"
      #   }'
      #   ```
      #
      # @param params [HanzoAI::Models::EmbeddingCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :model
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(params = {})
        parsed, options = HanzoAI::Models::EmbeddingCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "embeddings",
          query: parsed,
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
