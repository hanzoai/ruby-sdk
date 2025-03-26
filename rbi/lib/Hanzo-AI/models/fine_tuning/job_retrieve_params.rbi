# typed: strong

module HanzoAI
  module Models
    module FineTuning
      class JobRetrieveParams < HanzoAI::BaseModel
        extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

        sig { returns(HanzoAI::Models::FineTuning::JobRetrieveParams::CustomLlmProvider::OrSymbol) }
        attr_accessor :custom_llm_provider

        sig do
          params(
            custom_llm_provider: HanzoAI::Models::FineTuning::JobRetrieveParams::CustomLlmProvider::OrSymbol,
            request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(custom_llm_provider:, request_options: {})
        end

        sig do
          override
            .returns(
              {
                custom_llm_provider: HanzoAI::Models::FineTuning::JobRetrieveParams::CustomLlmProvider::OrSymbol,
                request_options: HanzoAI::RequestOptions
              }
            )
        end
        def to_hash
        end

        module CustomLlmProvider
          extend HanzoAI::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HanzoAI::Models::FineTuning::JobRetrieveParams::CustomLlmProvider) }
          OrSymbol =
            T.type_alias { T.any(Symbol, HanzoAI::Models::FineTuning::JobRetrieveParams::CustomLlmProvider::TaggedSymbol) }

          OPENAI = T.let(:openai, HanzoAI::Models::FineTuning::JobRetrieveParams::CustomLlmProvider::TaggedSymbol)
          AZURE = T.let(:azure, HanzoAI::Models::FineTuning::JobRetrieveParams::CustomLlmProvider::TaggedSymbol)

          sig do
            override.returns(T::Array[HanzoAI::Models::FineTuning::JobRetrieveParams::CustomLlmProvider::TaggedSymbol])
          end
          def self.values
          end
        end
      end
    end
  end
end
