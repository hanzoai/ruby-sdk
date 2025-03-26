# typed: strong

module Hanzoai
  module Resources
    class Model
      sig { returns(Hanzoai::Resources::Model::Info) }
      attr_reader :info

      sig { returns(Hanzoai::Resources::Model::Update) }
      attr_reader :update

      # Allows adding new models to the model list in the config.yaml
      sig do
        params(
          llm_params: T.any(Hanzoai::Models::ModelCreateParams::LlmParams, Hanzoai::Util::AnyHash),
          model_info: T.any(Hanzoai::Models::ModelInfo, Hanzoai::Util::AnyHash),
          model_name: String,
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def create(
        # LLM Params with 'model' requirement - used for completions
        llm_params:,
        model_info:,
        model_name:,
        request_options: {}
      )
      end

      # Allows deleting models in the model list in the config.yaml
      sig do
        params(id: String, request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)))
          .returns(T.anything)
      end
      def delete(id:, request_options: {})
      end

      sig { params(client: Hanzoai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
