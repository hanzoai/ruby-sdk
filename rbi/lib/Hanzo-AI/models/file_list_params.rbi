# typed: strong

module HanzoAI
  module Models
    class FileListParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :purpose

      sig do
        params(
          purpose: T.nilable(String),
          request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(purpose: nil, request_options: {})
      end

      sig { override.returns({purpose: T.nilable(String), request_options: HanzoAI::RequestOptions}) }
      def to_hash
      end
    end
  end
end
