# frozen_string_literal: true

module HanzoAI
  module Models
    class BudgetInfoParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute budgets
      #
      #   @return [Array<String>]
      required :budgets, HanzoAI::ArrayOf[String]

      # @!parse
      #   # @param budgets [Array<String>]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(budgets:, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
