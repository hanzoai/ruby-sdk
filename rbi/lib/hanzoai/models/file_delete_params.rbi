# typed: strong

module Hanzoai
  module Models
    class FileDeleteParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      sig { returns(String) }
      attr_accessor :provider

      sig do
        params(provider: String, request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(provider:, request_options: {})
      end

      sig { override.returns({provider: String, request_options: Hanzoai::RequestOptions}) }
      def to_hash
      end
    end
  end
end
