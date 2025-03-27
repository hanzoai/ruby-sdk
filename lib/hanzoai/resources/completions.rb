# frozen_string_literal: true

module Hanzoai
  module Resources
    class Completions
      # Follows the exact same API spec as
      #   `OpenAI's Completions API https://platform.openai.com/docs/api-reference/completions`
      #
      #   ```bash
      #   curl -X POST http://localhost:4000/v1/completions
      #   -H "Content-Type: application/json"
      #   -H "Authorization: Bearer sk-1234"
      #   -d '{
      #       "model": "gpt-3.5-turbo-instruct",
      #       "prompt": "Once upon a time",
      #       "max_tokens": 50,
      #       "temperature": 0.7
      #   }'
      #   ```
      #
      # @param params [Hanzoai::Models::CompletionCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :model
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(params = {})
        parsed, options = Hanzoai::Models::CompletionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "completions",
          query: parsed,
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
