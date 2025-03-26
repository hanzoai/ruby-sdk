# typed: strong

module HanzoAI
  module Models
    module Organization
      class InfoDeprecatedParams < HanzoAI::BaseModel
        extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

        sig { returns(T::Array[String]) }
        attr_accessor :organizations

        sig do
          params(
            organizations: T::Array[String],
            request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(organizations:, request_options: {})
        end

        sig { override.returns({organizations: T::Array[String], request_options: HanzoAI::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
