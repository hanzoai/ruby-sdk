# typed: strong

module Hanzoai
  module Models
    module Organization
      class InfoDeprecatedParams < Hanzoai::BaseModel
        extend Hanzoai::RequestParameters::Converter
        include Hanzoai::RequestParameters

        sig { returns(T::Array[String]) }
        attr_accessor :organizations

        sig do
          params(
            organizations: T::Array[String],
            request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(organizations:, request_options: {})
        end

        sig { override.returns({organizations: T::Array[String], request_options: Hanzoai::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
