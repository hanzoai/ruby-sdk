# typed: strong

module HanzoAI
  module Models
    class HealthCheckAllParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # Specify the model name (optional)
      sig { returns(T.nilable(String)) }
      attr_accessor :model

      sig do
        params(
          model: T.nilable(String),
          request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(model: nil, request_options: {})
      end

      sig { override.returns({model: T.nilable(String), request_options: HanzoAI::RequestOptions}) }
      def to_hash
      end
    end
  end
end
