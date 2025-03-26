# typed: strong

module Hanzoai
  module Models
    module Config
      class PassThroughEndpointListParams < Hanzoai::BaseModel
        extend Hanzoai::RequestParameters::Converter
        include Hanzoai::RequestParameters

        sig { returns(T.nilable(String)) }
        attr_accessor :endpoint_id

        sig do
          params(
            endpoint_id: T.nilable(String),
            request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(endpoint_id: nil, request_options: {})
        end

        sig { override.returns({endpoint_id: T.nilable(String), request_options: Hanzoai::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
