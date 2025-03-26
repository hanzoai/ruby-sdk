# frozen_string_literal: true

module Hanzoai
  module Models
    module FineTuning
      class JobListParams < Hanzoai::BaseModel
        # @!parse
        #   extend Hanzoai::RequestParameters::Converter
        include Hanzoai::RequestParameters

        # @!attribute custom_llm_provider
        #
        #   @return [Symbol, Hanzoai::Models::FineTuning::JobListParams::CustomLlmProvider]
        required :custom_llm_provider, enum: -> { Hanzoai::Models::FineTuning::JobListParams::CustomLlmProvider }

        # @!attribute after
        #
        #   @return [String, nil]
        optional :after, String, nil?: true

        # @!attribute limit
        #
        #   @return [Integer, nil]
        optional :limit, Integer, nil?: true

        # @!parse
        #   # @param custom_llm_provider [Symbol, Hanzoai::Models::FineTuning::JobListParams::CustomLlmProvider]
        #   # @param after [String, nil]
        #   # @param limit [Integer, nil]
        #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(custom_llm_provider:, after: nil, limit: nil, request_options: {}, **) = super

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
