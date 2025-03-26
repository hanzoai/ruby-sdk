# frozen_string_literal: true

module HanzoAI
  module Resources
    class Model
      # @return [HanzoAI::Resources::Model::Info]
      attr_reader :info

      # @return [HanzoAI::Resources::Model::Update]
      attr_reader :update

      # Allows adding new models to the model list in the config.yaml
      #
      # @param params [HanzoAI::Models::ModelCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::Models::ModelCreateParams::LlmParams] :llm_params LLM Params with 'model' requirement - used for completions
      #
      #   @option params [HanzoAI::Models::ModelInfo] :model_info
      #
      #   @option params [String] :model_name
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(params)
        parsed, options = HanzoAI::Models::ModelCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "model/new",
          body: parsed,
          model: HanzoAI::Unknown,
          options: options
        )
      end

      # Allows deleting models in the model list in the config.yaml
      #
      # @param params [HanzoAI::Models::ModelDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :id
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def delete(params)
        parsed, options = HanzoAI::Models::ModelDeleteParams.dump_request(params)
        @client.request(
          method: :post,
          path: "model/delete",
          body: parsed,
          model: HanzoAI::Unknown,
          options: options
        )
      end

      # @param client [HanzoAI::Client]
      def initialize(client:)
        @client = client
        @info = HanzoAI::Resources::Model::Info.new(client: client)
        @update = HanzoAI::Resources::Model::Update.new(client: client)
      end
    end
  end
end
