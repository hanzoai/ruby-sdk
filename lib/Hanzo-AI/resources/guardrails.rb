# frozen_string_literal: true

module HanzoAI
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
      #
      # @param params [HanzoAI::Models::GuardrailListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [HanzoAI::Models::GuardrailListResponse]
      def list(params = {})
        @client.request(
          method: :get,
          path: "guardrails/list",
          model: HanzoAI::Models::GuardrailListResponse,
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
