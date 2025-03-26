# typed: strong

module Hanzoai
  module Models
    module FineTuning
      class JobRetrieveParams < Hanzoai::BaseModel
        extend Hanzoai::RequestParameters::Converter
        include Hanzoai::RequestParameters

        sig { returns(Hanzoai::Models::FineTuning::JobRetrieveParams::CustomLlmProvider::OrSymbol) }
        attr_accessor :custom_llm_provider

        sig do
          params(
            custom_llm_provider: Hanzoai::Models::FineTuning::JobRetrieveParams::CustomLlmProvider::OrSymbol,
            request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(custom_llm_provider:, request_options: {})
        end

        sig do
          override
            .returns(
              {
                custom_llm_provider: Hanzoai::Models::FineTuning::JobRetrieveParams::CustomLlmProvider::OrSymbol,
                request_options: Hanzoai::RequestOptions
              }
            )
        end
        def to_hash
        end

        module CustomLlmProvider
          extend Hanzoai::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Hanzoai::Models::FineTuning::JobRetrieveParams::CustomLlmProvider) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Hanzoai::Models::FineTuning::JobRetrieveParams::CustomLlmProvider::TaggedSymbol) }

          OPENAI = T.let(:openai, Hanzoai::Models::FineTuning::JobRetrieveParams::CustomLlmProvider::TaggedSymbol)
          AZURE = T.let(:azure, Hanzoai::Models::FineTuning::JobRetrieveParams::CustomLlmProvider::TaggedSymbol)

          sig do
            override.returns(T::Array[Hanzoai::Models::FineTuning::JobRetrieveParams::CustomLlmProvider::TaggedSymbol])
          end
          def self.values
          end
        end
      end
    end
  end
end
