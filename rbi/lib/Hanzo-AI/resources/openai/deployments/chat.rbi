# typed: strong

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
          sig do
            params(
              model: String,
              request_options: T.nilable(
                T.any(
                  HanzoAI::RequestOptions,
                  HanzoAI::Util::AnyHash
                )
              )
            )
              .returns(T.anything)
          end
          def complete(model, request_options: {})
          end

          sig { params(client: HanzoAI::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
