# typed: strong

module Hanzoai
  module Resources
    class Responses
      sig { returns(Hanzoai::Resources::Responses::InputItems) }
      attr_reader :input_items

      # Follows the OpenAI Responses API spec:
      #   https://platform.openai.com/docs/api-reference/responses
      #
      #   ```bash
      #   curl -X POST http://localhost:4000/v1/responses     -H "Content-Type: application/json"     -H "Authorization: Bearer sk-1234"     -d '{
      #       "model": "gpt-4o",
      #       "input": "Tell me about AI"
      #   }'
      #   ```
      sig do
        params(request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)))
          .returns(T.anything)
      end
      def create(request_options: {})
      end

      # Get a response by ID.
      #
      #   Follows the OpenAI Responses API spec:
      #   https://platform.openai.com/docs/api-reference/responses/get
      #
      #   ```bash
      #   curl -X GET http://localhost:4000/v1/responses/resp_abc123     -H "Authorization: Bearer sk-1234"
      #   ```
      sig do
        params(
          response_id: String,
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def retrieve(response_id, request_options: {})
      end

      # Delete a response by ID.
      #
      #   Follows the OpenAI Responses API spec:
      #   https://platform.openai.com/docs/api-reference/responses/delete
      #
      #   ```bash
      #   curl -X DELETE http://localhost:4000/v1/responses/resp_abc123     -H "Authorization: Bearer sk-1234"
      #   ```
      sig do
        params(
          response_id: String,
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def delete(response_id, request_options: {})
      end

      sig { params(client: Hanzoai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
