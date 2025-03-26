# frozen_string_literal: true

module HanzoAI
  module Resources
    class Model
      class Info
        # Provides more info about each model in /models, including config.yaml
        #   descriptions (except api key and api base)
        #
        #   Parameters: llm_model_id: Optional[str] = None (this is the value of
        #   `x-llm-model-id` returned in response headers)
        #
        #       - When llm_model_id is passed, it will return the info for that specific model
        #       - When llm_model_id is not passed, it will return the info for all models
        #
        #   Returns: Returns a dictionary containing information about each model.
        #
        #   Example Response:
        #
        #   ```json
        #   {
        #     "data": [
        #       {
        #         "model_name": "fake-openai-endpoint",
        #         "llm_params": {
        #           "api_base": "https://exampleopenaiendpoint-production.up.railway.app/",
        #           "model": "openai/fake"
        #         },
        #         "model_info": {
        #           "id": "112f74fab24a7a5245d2ced3536dd8f5f9192c57ee6e332af0f0512e08bed5af",
        #           "db_model": false
        #         }
        #       }
        #     ]
        #   }
        #   ```
        #
        # @param params [HanzoAI::Models::Model::InfoListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String, nil] :llm_model_id
        #
        #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def list(params = {})
          parsed, options = HanzoAI::Models::Model::InfoListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "model/info",
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
