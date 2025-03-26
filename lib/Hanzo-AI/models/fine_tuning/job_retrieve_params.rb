# frozen_string_literal: true

module HanzoAI
  module Models
    module FineTuning
      class JobRetrieveParams < HanzoAI::BaseModel
        # @!parse
        #   extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

        # @!attribute custom_llm_provider
        #
        #   @return [Symbol, HanzoAI::Models::FineTuning::JobRetrieveParams::CustomLlmProvider]
        required :custom_llm_provider,
                 enum: -> { HanzoAI::Models::FineTuning::JobRetrieveParams::CustomLlmProvider }

        # @!parse
        #   # @param custom_llm_provider [Symbol, HanzoAI::Models::FineTuning::JobRetrieveParams::CustomLlmProvider]
        #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(custom_llm_provider:, request_options: {}, **) = super

        # def initialize: (Hash | HanzoAI::BaseModel) -> void

        module CustomLlmProvider
          extend HanzoAI::Enum

          OPENAI = :openai
          AZURE = :azure

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
