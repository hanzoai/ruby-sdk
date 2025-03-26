# typed: strong

module HanzoAI
  module Resources
    class Model
      sig { returns(HanzoAI::Resources::Model::Info) }
      attr_reader :info

      sig { returns(HanzoAI::Resources::Model::Update) }
      attr_reader :update

      # Allows adding new models to the model list in the config.yaml
      sig do
        params(
          llm_params: T.any(HanzoAI::Models::ModelCreateParams::LlmParams, HanzoAI::Util::AnyHash),
          model_info: T.any(HanzoAI::Models::ModelInfo, HanzoAI::Util::AnyHash),
          model_name: String,
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
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
        params(id: String, request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)))
          .returns(T.anything)
      end
      def delete(id:, request_options: {})
      end

      sig { params(client: HanzoAI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
