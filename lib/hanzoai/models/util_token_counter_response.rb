# frozen_string_literal: true

module Hanzoai
  module Models
    class UtilTokenCounterResponse < Hanzoai::BaseModel
      # @!attribute model_used
      #
      #   @return [String]
      required :model_used, String

      # @!attribute request_model
      #
      #   @return [String]
      required :request_model, String

      # @!attribute tokenizer_type
      #
      #   @return [String]
      required :tokenizer_type, String

      # @!attribute total_tokens
      #
      #   @return [Integer]
      required :total_tokens, Integer

      # @!parse
      #   # @param model_used [String]
      #   # @param request_model [String]
      #   # @param tokenizer_type [String]
      #   # @param total_tokens [Integer]
      #   #
      #   def initialize(model_used:, request_model:, tokenizer_type:, total_tokens:, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
