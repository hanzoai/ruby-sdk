# frozen_string_literal: true

module HanzoAI
  module Models
    class UtilTokenCounterParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute model
      #
      #   @return [String]
      required :model, String

      # @!attribute messages
      #
      #   @return [Array<Object>, nil]
      optional :messages, HanzoAI::ArrayOf[HanzoAI::Unknown], nil?: true

      # @!attribute prompt
      #
      #   @return [String, nil]
      optional :prompt, String, nil?: true

      # @!parse
      #   # @param model [String]
      #   # @param messages [Array<Object>, nil]
      #   # @param prompt [String, nil]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(model:, messages: nil, prompt: nil, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
