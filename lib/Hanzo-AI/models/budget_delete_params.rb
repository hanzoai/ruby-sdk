# frozen_string_literal: true

module HanzoAI
  module Models
    class BudgetDeleteParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!parse
      #   # @param id [String]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(id:, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
