# frozen_string_literal: true

module HanzoAI
  module Models
    class GuardrailListResponse < HanzoAI::BaseModel
      # @!attribute guardrails
      #
      #   @return [Array<HanzoAI::Models::GuardrailListResponse::Guardrail>]
      required :guardrails, -> { HanzoAI::ArrayOf[HanzoAI::Models::GuardrailListResponse::Guardrail] }

      # @!parse
      #   # @param guardrails [Array<HanzoAI::Models::GuardrailListResponse::Guardrail>]
      #   #
      #   def initialize(guardrails:, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void

      class Guardrail < HanzoAI::BaseModel
        # @!attribute guardrail_info
        #
        #   @return [Object, nil]
        required :guardrail_info, HanzoAI::Unknown, nil?: true

        # @!attribute guardrail_name
        #
        #   @return [String]
        required :guardrail_name, String

        # @!attribute llm_params
        #   The returned LLM Params object for /guardrails/list
        #
        #   @return [HanzoAI::Models::GuardrailListResponse::Guardrail::LlmParams]
        required :llm_params, -> { HanzoAI::Models::GuardrailListResponse::Guardrail::LlmParams }

        # @!parse
        #   # @param guardrail_info [Object, nil]
        #   # @param guardrail_name [String]
        #   # @param llm_params [HanzoAI::Models::GuardrailListResponse::Guardrail::LlmParams]
        #   #
        #   def initialize(guardrail_info:, guardrail_name:, llm_params:, **) = super

        # def initialize: (Hash | HanzoAI::BaseModel) -> void

        class LlmParams < HanzoAI::BaseModel
          # @!attribute guardrail
          #
          #   @return [String]
          required :guardrail, String

          # @!attribute mode
          #
          #   @return [String, Array<String>]
          required :mode, union: -> { HanzoAI::Models::GuardrailListResponse::Guardrail::LlmParams::Mode }

          # @!attribute [r] default_on
          #
          #   @return [Boolean, nil]
          optional :default_on, HanzoAI::BooleanModel

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

          # def initialize: (Hash | HanzoAI::BaseModel) -> void

          module Mode
            extend HanzoAI::Union

            StringArray = HanzoAI::ArrayOf[String]

            variant String

            variant HanzoAI::Models::GuardrailListResponse::Guardrail::LlmParams::Mode::StringArray

            # @!parse
            #   # @return [Array(String, Array<String>)]
            #   def self.variants; end
          end
        end
      end
    end
  end
end
