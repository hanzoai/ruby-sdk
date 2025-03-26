# frozen_string_literal: true

module Hanzoai
  module Resources
    class Chat
      class Completions
        # Follows the exact same API spec as
        #   `OpenAI's Chat API https://platform.openai.com/docs/api-reference/chat`
        #
        #   ```bash
        #   curl -X POST http://localhost:4000/v1/chat/completions
        #   -H "Content-Type: application/json"
        #   -H "Authorization: Bearer sk-1234"
        #   -d '{
        #       "model": "gpt-4o",
        #       "messages": [
        #           {
        #               "role": "user",
        #               "content": "Hello!"
        #           }
        #       ]
        #   }'
        #   ```
        #
        # @param params [Hanzoai::Models::Chat::CompletionCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String, nil] :model
        #
        #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def create(params = {})
          parsed, options = Hanzoai::Models::Chat::CompletionCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "v1/chat/completions",
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
end
