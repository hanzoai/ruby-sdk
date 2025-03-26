# typed: strong

module HanzoAI
  module Models
    module Model
      class InfoListParams < HanzoAI::BaseModel
        extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

        sig { returns(T.nilable(String)) }
        attr_accessor :llm_model_id

        sig do
          params(
            llm_model_id: T.nilable(String),
            request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(llm_model_id: nil, request_options: {})
        end

        sig { override.returns({llm_model_id: T.nilable(String), request_options: HanzoAI::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
