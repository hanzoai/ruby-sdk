# typed: strong

module Hanzoai
  module Models
    module Batches
      class CancelCancelParams < Hanzoai::BaseModel
        extend Hanzoai::RequestParameters::Converter
        include Hanzoai::RequestParameters

        sig { returns(T.nilable(String)) }
        attr_accessor :provider

        sig do
          params(
            provider: T.nilable(String),
            request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(provider: nil, request_options: {})
        end

        sig { override.returns({provider: T.nilable(String), request_options: Hanzoai::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
