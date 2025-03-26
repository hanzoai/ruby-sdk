# frozen_string_literal: true

module Hanzoai
  module Models
    class UtilGetSupportedOpenAIParamsParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # @!attribute model
      #
      #   @return [String]
      required :model, String

      # @!parse
      #   # @param model [String]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(model:, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
