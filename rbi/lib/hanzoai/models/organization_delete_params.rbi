# typed: strong

module Hanzoai
  module Models
    class OrganizationDeleteParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      sig { returns(T::Array[String]) }
      attr_accessor :organization_ids

      sig do
        params(
          organization_ids: T::Array[String],
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(organization_ids:, request_options: {})
      end

      sig { override.returns({organization_ids: T::Array[String], request_options: Hanzoai::RequestOptions}) }
      def to_hash
      end
    end
  end
end
