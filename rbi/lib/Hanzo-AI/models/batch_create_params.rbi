# typed: strong

module HanzoAI
  module Models
    class BatchCreateParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :provider

      sig do
        params(
          provider: T.nilable(String),
          request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(provider: nil, request_options: {})
      end

      sig { override.returns({provider: T.nilable(String), request_options: HanzoAI::RequestOptions}) }
      def to_hash
      end
    end
  end
end
