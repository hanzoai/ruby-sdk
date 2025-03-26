# typed: strong

module HanzoAI
  module Models
    module FineTuning
      class JobListParams < HanzoAI::BaseModel
        extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

        sig { returns(HanzoAI::Models::FineTuning::JobListParams::CustomLlmProvider::OrSymbol) }
        attr_accessor :custom_llm_provider

        sig { returns(T.nilable(String)) }
        attr_accessor :after

        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit

        sig do
          params(
            custom_llm_provider: HanzoAI::Models::FineTuning::JobListParams::CustomLlmProvider::OrSymbol,
            after: T.nilable(String),
            limit: T.nilable(Integer),
            request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(custom_llm_provider:, after: nil, limit: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                custom_llm_provider: HanzoAI::Models::FineTuning::JobListParams::CustomLlmProvider::OrSymbol,
                after: T.nilable(String),
                limit: T.nilable(Integer),
                request_options: HanzoAI::RequestOptions
              }
            )
        end
        def to_hash
        end

        module CustomLlmProvider
          extend HanzoAI::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HanzoAI::Models::FineTuning::JobListParams::CustomLlmProvider) }
          OrSymbol =
            T.type_alias { T.any(Symbol, HanzoAI::Models::FineTuning::JobListParams::CustomLlmProvider::TaggedSymbol) }

          OPENAI = T.let(:openai, HanzoAI::Models::FineTuning::JobListParams::CustomLlmProvider::TaggedSymbol)
          AZURE = T.let(:azure, HanzoAI::Models::FineTuning::JobListParams::CustomLlmProvider::TaggedSymbol)

          sig { override.returns(T::Array[HanzoAI::Models::FineTuning::JobListParams::CustomLlmProvider::TaggedSymbol]) }
          def self.values
          end
        end
      end
    end
  end
end
