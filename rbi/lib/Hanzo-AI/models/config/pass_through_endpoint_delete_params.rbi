# typed: strong

module HanzoAI
  module Models
    module Config
      class PassThroughEndpointDeleteParams < HanzoAI::BaseModel
        extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

        sig { returns(String) }
        attr_accessor :endpoint_id

        sig do
          params(endpoint_id: String, request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
            .returns(T.attached_class)
        end
        def self.new(endpoint_id:, request_options: {})
        end

        sig { override.returns({endpoint_id: String, request_options: HanzoAI::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
