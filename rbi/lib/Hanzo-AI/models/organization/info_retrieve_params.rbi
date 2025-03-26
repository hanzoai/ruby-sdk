# typed: strong

module HanzoAI
  module Models
    module Organization
      class InfoRetrieveParams < HanzoAI::BaseModel
        extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

        sig { returns(String) }
        attr_accessor :organization_id

        sig do
          params(
            organization_id: String,
            request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(organization_id:, request_options: {})
        end

        sig { override.returns({organization_id: String, request_options: HanzoAI::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
