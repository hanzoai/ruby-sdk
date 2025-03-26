# frozen_string_literal: true

module Hanzoai
  module Models
    class BudgetInfoParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # @!attribute budgets
      #
      #   @return [Array<String>]
      required :budgets, Hanzoai::ArrayOf[String]

      # @!parse
      #   # @param budgets [Array<String>]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(budgets:, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
