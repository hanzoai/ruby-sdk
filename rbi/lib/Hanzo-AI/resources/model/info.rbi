# typed: strong

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
        sig do
          params(
            llm_model_id: T.nilable(String),
            request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
          )
            .returns(T.anything)
        end
        def list(llm_model_id: nil, request_options: {})
        end

        sig { params(client: HanzoAI::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
