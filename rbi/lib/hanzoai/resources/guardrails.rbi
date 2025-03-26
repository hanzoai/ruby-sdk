# typed: strong

module Hanzoai
  module Resources
    class Guardrails
      # List the guardrails that are available on the proxy server
      #
      #   👉 [Guardrail docs](https://docs.llm.ai/docs/proxy/guardrails/quick_start)
      #
      #   Example Request:
      #
      #   ```bash
      #   curl -X GET "http://localhost:4000/guardrails/list" -H "Authorization: Bearer <your_api_key>"
      #   ```
      #
      #   Example Response:
      #
      #   ```json
      #   {
      #     "guardrails": [
      #       {
      #         "guardrail_name": "bedrock-pre-guard",
      #         "guardrail_info": {
      #           "params": [
      #             {
      #               "name": "toxicity_score",
      #               "type": "float",
      #               "description": "Score between 0-1 indicating content toxicity level"
      #             },
      #             {
      #               "name": "pii_detection",
      #               "type": "boolean"
      #             }
      #           ]
      #         }
      #       }
      #     ]
      #   }
      #   ```
      sig do
        params(request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)))
          .returns(Hanzoai::Models::GuardrailListResponse)
      end
      def list(request_options: {})
      end

      sig { params(client: Hanzoai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
