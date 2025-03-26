# frozen_string_literal: true

module Hanzoai
  module Resources
    class Model
      # @return [Hanzoai::Resources::Model::Info]
      attr_reader :info

      # @return [Hanzoai::Resources::Model::Update]
      attr_reader :update

      # Allows adding new models to the model list in the config.yaml
      #
      # @param params [Hanzoai::Models::ModelCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::Models::ModelCreateParams::LlmParams] :llm_params LLM Params with 'model' requirement - used for completions
      #
      #   @option params [Hanzoai::Models::ModelInfo] :model_info
      #
      #   @option params [String] :model_name
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(params)
        parsed, options = Hanzoai::Models::ModelCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "model/new",
          body: parsed,
          model: Hanzoai::Unknown,
          options: options
        )
      end

      # Allows deleting models in the model list in the config.yaml
      #
      # @param params [Hanzoai::Models::ModelDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :id
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def delete(params)
        parsed, options = Hanzoai::Models::ModelDeleteParams.dump_request(params)
        @client.request(
          method: :post,
          path: "model/delete",
          body: parsed,
          model: Hanzoai::Unknown,
          options: options
        )
      end

      # @param client [Hanzoai::Client]
      def initialize(client:)
        @client = client
        @info = Hanzoai::Resources::Model::Info.new(client: client)
        @update = Hanzoai::Resources::Model::Update.new(client: client)
      end
    end
  end
end
