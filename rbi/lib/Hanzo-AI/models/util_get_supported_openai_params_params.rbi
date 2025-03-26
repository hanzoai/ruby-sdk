# typed: strong

module HanzoAI
  module Models
    class UtilGetSupportedOpenAIParamsParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      sig { returns(String) }
      attr_accessor :model

      sig do
        params(model: String, request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(model:, request_options: {})
      end

      sig { override.returns({model: String, request_options: HanzoAI::RequestOptions}) }
      def to_hash
      end
    end
  end
end
