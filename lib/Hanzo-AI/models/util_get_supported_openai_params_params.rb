# frozen_string_literal: true

module HanzoAI
  module Models
    class UtilGetSupportedOpenAIParamsParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute model
      #
      #   @return [String]
      required :model, String

      # @!parse
      #   # @param model [String]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(model:, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
