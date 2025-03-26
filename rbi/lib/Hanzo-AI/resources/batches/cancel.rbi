# typed: strong

module HanzoAI
  module Resources
    class Batches
      class Cancel
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
        sig do
          params(
            batch_id: String,
            provider: T.nilable(String),
            request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
          )
            .returns(T.anything)
        end
        def cancel(batch_id, provider: nil, request_options: {})
        end

        sig { params(client: HanzoAI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
