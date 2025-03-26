# typed: strong

module HanzoAI
  module Models
    class FileDeleteParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      sig { returns(String) }
      attr_accessor :provider

      sig do
        params(provider: String, request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(provider:, request_options: {})
      end

      sig { override.returns({provider: String, request_options: HanzoAI::RequestOptions}) }
      def to_hash
      end
    end
  end
end
