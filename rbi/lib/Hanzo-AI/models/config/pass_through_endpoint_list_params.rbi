# typed: strong

module HanzoAI
  module Models
    module Config
      class PassThroughEndpointListParams < HanzoAI::BaseModel
        extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

        sig { returns(T.nilable(String)) }
        attr_accessor :endpoint_id

        sig do
          params(
            endpoint_id: T.nilable(String),
            request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(endpoint_id: nil, request_options: {})
        end

        sig { override.returns({endpoint_id: T.nilable(String), request_options: HanzoAI::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
