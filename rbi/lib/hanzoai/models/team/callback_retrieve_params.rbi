# typed: strong

module Hanzoai
  module Models
    module Team
      class CallbackRetrieveParams < Hanzoai::BaseModel
        extend Hanzoai::RequestParameters::Converter
        include Hanzoai::RequestParameters

        sig do
          params(
            request_options: T.any(
              Hanzoai::RequestOptions,
              Hanzoai::Util::AnyHash
            )
          ).returns(T.attached_class)
        end
        def self.new(request_options: {})
        end

        sig { override.returns({request_options: Hanzoai::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
