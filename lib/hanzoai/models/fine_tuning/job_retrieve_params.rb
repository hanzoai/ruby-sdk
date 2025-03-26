# frozen_string_literal: true

module Hanzoai
  module Models
    module FineTuning
      class JobRetrieveParams < Hanzoai::BaseModel
        # @!parse
        #   extend Hanzoai::RequestParameters::Converter
        include Hanzoai::RequestParameters

        # @!attribute custom_llm_provider
        #
        #   @return [Symbol, Hanzoai::Models::FineTuning::JobRetrieveParams::CustomLlmProvider]
        required :custom_llm_provider,
                 enum: -> { Hanzoai::Models::FineTuning::JobRetrieveParams::CustomLlmProvider }

        # @!parse
        #   # @param custom_llm_provider [Symbol, Hanzoai::Models::FineTuning::JobRetrieveParams::CustomLlmProvider]
        #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(custom_llm_provider:, request_options: {}, **) = super

        # def initialize: (Hash | Hanzoai::BaseModel) -> void

        module CustomLlmProvider
          extend Hanzoai::Enum

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
