# typed: strong

module HanzoAI
  module Models
    class KeyRetrieveInfoParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # Key in the request parameters
      sig { returns(T.nilable(String)) }
      attr_accessor :key

      sig do
        params(
          key: T.nilable(String),
          request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(key: nil, request_options: {})
      end

      sig { override.returns({key: T.nilable(String), request_options: HanzoAI::RequestOptions}) }
      def to_hash
      end
    end
  end
end
