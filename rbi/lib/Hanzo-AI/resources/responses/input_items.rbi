# typed: strong

module HanzoAI
  module Resources
    class Responses
      class InputItems
        # Get input items for a response.
        #
        #   Follows the OpenAI Responses API spec:
        #   https://platform.openai.com/docs/api-reference/responses/input-items
        #
        #   ```bash
        #   curl -X GET http://localhost:4000/v1/responses/resp_abc123/input_items     -H "Authorization: Bearer sk-1234"
        #   ```
        sig do
          params(
            response_id: String,
            request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
          )
            .returns(T.anything)
        end
        def list(response_id, request_options: {})
        end

        sig { params(client: HanzoAI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
