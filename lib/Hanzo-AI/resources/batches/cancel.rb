# frozen_string_literal: true

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
        #
        # @param batch_id [String]
        #
        # @param params [HanzoAI::Models::Batches::CancelCancelParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String, nil] :provider
        #
        #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def cancel(batch_id, params = {})
          parsed, options = HanzoAI::Models::Batches::CancelCancelParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["batches/%0s/cancel", batch_id],
            query: parsed,
            model: HanzoAI::Unknown,
            options: options
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
