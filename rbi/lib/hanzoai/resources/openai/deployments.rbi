# typed: strong

module Hanzoai
  module Resources
    class OpenAI
      class Deployments
        sig { returns(Hanzoai::Resources::OpenAI::Deployments::Chat) }
        attr_reader :chat

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
        sig do
          params(
            model: String,
            request_options: T.nilable(
              T.any(
                Hanzoai::RequestOptions,
                Hanzoai::Util::AnyHash
              )
            )
          )
            .returns(T.anything)
        end
        def complete(model, request_options: {})
        end

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
        sig do
          params(
            model: String,
            request_options: T.nilable(
              T.any(
                Hanzoai::RequestOptions,
                Hanzoai::Util::AnyHash
              )
            )
          )
            .returns(T.anything)
        end
        def embed(model, request_options: {})
        end

        sig { params(client: Hanzoai::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
