# typed: strong

module Hanzoai
  module Resources
    class Model
      class Update
        # Edit existing model params
        sig do
          params(
            llm_params: T.nilable(T.any(Hanzoai::Models::Model::UpdateDeployment::LlmParams, Hanzoai::Util::AnyHash)),
            model_info: T.nilable(T.any(Hanzoai::Models::ModelInfo, Hanzoai::Util::AnyHash)),
            model_name: T.nilable(String),
            request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
          )
            .returns(T.anything)
        end
        def full(llm_params: nil, model_info: nil, model_name: nil, request_options: {})
        end

        # PATCH Endpoint for partial model updates.
        #
        #   Only updates the fields specified in the request while preserving other existing
        #   values. Follows proper PATCH semantics by only modifying provided fields.
        #
        #   Args: model_id: The ID of the model to update patch_data: The fields to update
        #   and their new values user_api_key_dict: User authentication information
        #
        #   Returns: Updated model information
        #
        #   Raises: ProxyException: For various error conditions including authentication
        #   and database errors
        sig do
          params(
            model_id: String,
            llm_params: T.nilable(T.any(Hanzoai::Models::Model::UpdateDeployment::LlmParams, Hanzoai::Util::AnyHash)),
            model_info: T.nilable(T.any(Hanzoai::Models::ModelInfo, Hanzoai::Util::AnyHash)),
            model_name: T.nilable(String),
            request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
          )
            .returns(T.anything)
        end
        def partial(model_id, llm_params: nil, model_info: nil, model_name: nil, request_options: {})
        end

        sig { params(client: Hanzoai::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
