# frozen_string_literal: true

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
      #
      # @param params [Hanzoai::Models::GuardrailListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Hanzoai::Models::GuardrailListResponse]
      def list(params = {})
        @client.request(
          method: :get,
          path: "guardrails/list",
          model: Hanzoai::Models::GuardrailListResponse,
          options: params[:request_options]
        )
      end

      # @param client [Hanzoai::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
