# typed: strong

module Hanzoai
  module Models
    module Config
      class PassThroughEndpointDeleteParams < Hanzoai::BaseModel
        extend Hanzoai::RequestParameters::Converter
        include Hanzoai::RequestParameters

        sig { returns(String) }
        attr_accessor :endpoint_id

        sig do
          params(endpoint_id: String, request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
            .returns(T.attached_class)
        end
        def self.new(endpoint_id:, request_options: {})
        end

        sig { override.returns({endpoint_id: String, request_options: Hanzoai::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
