# typed: strong

module Hanzoai
  module Models
    module Organization
      class InfoRetrieveParams < Hanzoai::BaseModel
        extend Hanzoai::RequestParameters::Converter
        include Hanzoai::RequestParameters

        sig { returns(String) }
        attr_accessor :organization_id

        sig do
          params(
            organization_id: String,
            request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(organization_id:, request_options: {})
        end

        sig { override.returns({organization_id: String, request_options: Hanzoai::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
