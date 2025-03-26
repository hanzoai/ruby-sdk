# typed: strong

module Hanzoai
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
      sig do
        params(
          model: T.nilable(String),
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def create(model: nil, request_options: {})
      end

      sig { params(client: Hanzoai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
