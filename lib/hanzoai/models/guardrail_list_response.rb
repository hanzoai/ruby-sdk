# frozen_string_literal: true

module Hanzoai
  module Models
    class GuardrailListResponse < Hanzoai::BaseModel
      # @!attribute guardrails
      #
      #   @return [Array<Hanzoai::Models::GuardrailListResponse::Guardrail>]
      required :guardrails, -> { Hanzoai::ArrayOf[Hanzoai::Models::GuardrailListResponse::Guardrail] }

      # @!parse
      #   # @param guardrails [Array<Hanzoai::Models::GuardrailListResponse::Guardrail>]
      #   #
      #   def initialize(guardrails:, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void

      class Guardrail < Hanzoai::BaseModel
        # @!attribute guardrail_info
        #
        #   @return [Object, nil]
        required :guardrail_info, Hanzoai::Unknown, nil?: true

        # @!attribute guardrail_name
        #
        #   @return [String]
        required :guardrail_name, String

        # @!attribute llm_params
        #   The returned LLM Params object for /guardrails/list
        #
        #   @return [Hanzoai::Models::GuardrailListResponse::Guardrail::LlmParams]
        required :llm_params, -> { Hanzoai::Models::GuardrailListResponse::Guardrail::LlmParams }

        # @!parse
        #   # @param guardrail_info [Object, nil]
        #   # @param guardrail_name [String]
        #   # @param llm_params [Hanzoai::Models::GuardrailListResponse::Guardrail::LlmParams]
        #   #
        #   def initialize(guardrail_info:, guardrail_name:, llm_params:, **) = super

        # def initialize: (Hash | Hanzoai::BaseModel) -> void

        class LlmParams < Hanzoai::BaseModel
          # @!attribute guardrail
          #
          #   @return [String]
          required :guardrail, String

          # @!attribute mode
          #
          #   @return [String, Array<String>]
          required :mode, union: -> { Hanzoai::Models::GuardrailListResponse::Guardrail::LlmParams::Mode }

          # @!attribute [r] default_on
          #
          #   @return [Boolean, nil]
          optional :default_on, Hanzoai::BooleanModel

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :default_on

          # @!parse
          #   # The returned LLM Params object for /guardrails/list
          #   #
          #   # @param guardrail [String]
          #   # @param mode [String, Array<String>]
          #   # @param default_on [Boolean]
          #   #
          #   def initialize(guardrail:, mode:, default_on: nil, **) = super

          # def initialize: (Hash | Hanzoai::BaseModel) -> void

          module Mode
            extend Hanzoai::Union

            variant String

            variant -> { Hanzoai::Models::GuardrailListResponse::Guardrail::LlmParams::Mode::StringArray }

            # @!parse
            #   # @return [Array(String, Array<String>)]
            #   def self.variants; end

            StringArray = Hanzoai::ArrayOf[String]
          end
        end
      end
    end
  end
end
