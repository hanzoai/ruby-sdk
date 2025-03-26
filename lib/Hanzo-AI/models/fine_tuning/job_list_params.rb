# frozen_string_literal: true

module HanzoAI
  module Models
    module FineTuning
      class JobListParams < HanzoAI::BaseModel
        # @!parse
        #   extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

        # @!attribute custom_llm_provider
        #
        #   @return [Symbol, HanzoAI::Models::FineTuning::JobListParams::CustomLlmProvider]
        required :custom_llm_provider, enum: -> { HanzoAI::Models::FineTuning::JobListParams::CustomLlmProvider }

        # @!attribute after
        #
        #   @return [String, nil]
        optional :after, String, nil?: true

        # @!attribute limit
        #
        #   @return [Integer, nil]
        optional :limit, Integer, nil?: true

        # @!parse
        #   # @param custom_llm_provider [Symbol, HanzoAI::Models::FineTuning::JobListParams::CustomLlmProvider]
        #   # @param after [String, nil]
        #   # @param limit [Integer, nil]
        #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(custom_llm_provider:, after: nil, limit: nil, request_options: {}, **) = super

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
