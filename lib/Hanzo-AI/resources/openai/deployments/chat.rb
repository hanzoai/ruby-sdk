# frozen_string_literal: true

module HanzoAI
  module Resources
    class OpenAI
      class Deployments
        class Chat
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
          # @param model [String]
          #
          # @param params [HanzoAI::Models::OpenAI::Deployments::ChatCompleteParams, Hash{Symbol=>Object}] .
          #
          #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [Object]
          def complete(model, params = {})
            @client.request(
              method: :post,
              path: ["openai/deployments/%0s/chat/completions", model],
              model: HanzoAI::Unknown,
              options: params[:request_options]
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
end
