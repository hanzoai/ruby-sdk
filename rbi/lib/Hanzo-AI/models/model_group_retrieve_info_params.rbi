# typed: strong

module HanzoAI
  module Models
    class ModelGroupRetrieveInfoParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :model_group

      sig do
        params(
          model_group: T.nilable(String),
          request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(model_group: nil, request_options: {})
      end

      sig { override.returns({model_group: T.nilable(String), request_options: HanzoAI::RequestOptions}) }
      def to_hash
      end
    end
  end
end
