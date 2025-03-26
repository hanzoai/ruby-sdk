# frozen_string_literal: true

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
        #
        # @param response_id [String]
        #
        # @param params [HanzoAI::Models::Responses::InputItemListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def list(response_id, params = {})
          @client.request(
            method: :get,
            path: ["v1/responses/%0s/input_items", response_id],
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
