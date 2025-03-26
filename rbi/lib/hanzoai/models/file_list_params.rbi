# typed: strong

module Hanzoai
  module Models
    class FileListParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      sig { returns(T.nilable(String)) }
      attr_accessor :purpose

      sig do
        params(
          purpose: T.nilable(String),
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(purpose: nil, request_options: {})
      end

      sig { override.returns({purpose: T.nilable(String), request_options: Hanzoai::RequestOptions}) }
      def to_hash
      end
    end
  end
end
