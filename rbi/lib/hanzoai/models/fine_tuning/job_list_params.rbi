# typed: strong

module Hanzoai
  module Models
    module FineTuning
      class JobListParams < Hanzoai::BaseModel
        extend Hanzoai::RequestParameters::Converter
        include Hanzoai::RequestParameters

        sig { returns(Hanzoai::Models::FineTuning::JobListParams::CustomLlmProvider::OrSymbol) }
        attr_accessor :custom_llm_provider

        sig { returns(T.nilable(String)) }
        attr_accessor :after

        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit

        sig do
          params(
            custom_llm_provider: Hanzoai::Models::FineTuning::JobListParams::CustomLlmProvider::OrSymbol,
            after: T.nilable(String),
            limit: T.nilable(Integer),
            request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(custom_llm_provider:, after: nil, limit: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                custom_llm_provider: Hanzoai::Models::FineTuning::JobListParams::CustomLlmProvider::OrSymbol,
                after: T.nilable(String),
                limit: T.nilable(Integer),
                request_options: Hanzoai::RequestOptions
              }
            )
        end
        def to_hash
        end

        module CustomLlmProvider
          extend Hanzoai::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Hanzoai::Models::FineTuning::JobListParams::CustomLlmProvider) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Hanzoai::Models::FineTuning::JobListParams::CustomLlmProvider::TaggedSymbol) }

          OPENAI = T.let(:openai, Hanzoai::Models::FineTuning::JobListParams::CustomLlmProvider::TaggedSymbol)
          AZURE = T.let(:azure, Hanzoai::Models::FineTuning::JobListParams::CustomLlmProvider::TaggedSymbol)

          sig { override.returns(T::Array[Hanzoai::Models::FineTuning::JobListParams::CustomLlmProvider::TaggedSymbol]) }
          def self.values
          end
        end
      end
    end
  end
end
