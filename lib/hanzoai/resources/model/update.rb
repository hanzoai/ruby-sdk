# frozen_string_literal: true

module Hanzoai
  module Resources
    class Model
      class Update
        # Edit existing model params
        #
        # @param params [Hanzoai::Models::Model::UpdateFullParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Hanzoai::Models::Model::UpdateDeployment::LlmParams, nil] :llm_params
        #
        #   @option params [Hanzoai::Models::ModelInfo, nil] :model_info
        #
        #   @option params [String, nil] :model_name
        #
        #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def full(params = {})
          parsed, options = Hanzoai::Models::Model::UpdateFullParams.dump_request(params)
          @client.request(
            method: :post,
            path: "model/update",
            body: parsed,
            model: Hanzoai::Unknown,
            options: options
          )
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
        #
        # @param model_id [String]
        #
        # @param params [Hanzoai::Models::Model::UpdatePartialParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Hanzoai::Models::Model::UpdateDeployment::LlmParams, nil] :llm_params
        #
        #   @option params [Hanzoai::Models::ModelInfo, nil] :model_info
        #
        #   @option params [String, nil] :model_name
        #
        #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def partial(model_id, params = {})
          parsed, options = Hanzoai::Models::Model::UpdatePartialParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["model/%0s/update", model_id],
            body: parsed,
            model: Hanzoai::Unknown,
            options: options
          )
        end

        # @param client [Hanzoai::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
