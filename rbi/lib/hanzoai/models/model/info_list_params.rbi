# typed: strong

module Hanzoai
  module Models
    module Model
      class InfoListParams < Hanzoai::BaseModel
        extend Hanzoai::RequestParameters::Converter
        include Hanzoai::RequestParameters

        sig { returns(T.nilable(String)) }
        attr_accessor :llm_model_id

        sig do
          params(
            llm_model_id: T.nilable(String),
            request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(llm_model_id: nil, request_options: {})
        end

        sig { override.returns({llm_model_id: T.nilable(String), request_options: Hanzoai::RequestOptions}) }
        def to_hash
        end
      end
    end
  end
end
