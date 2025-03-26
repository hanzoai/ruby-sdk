# typed: strong

module Hanzoai
  module Models
    class KeyRetrieveInfoParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # Key in the request parameters
      sig { returns(T.nilable(String)) }
      attr_accessor :key

      sig do
        params(
          key: T.nilable(String),
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(key: nil, request_options: {})
      end

      sig { override.returns({key: T.nilable(String), request_options: Hanzoai::RequestOptions}) }
      def to_hash
      end
    end
  end
end
