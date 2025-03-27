# frozen_string_literal: true

module Hanzoai
  module Models
    class BudgetSettingsParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # @!attribute budget_id
      #
      #   @return [String]
      required :budget_id, String

      # @!parse
      #   # @param budget_id [String]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(budget_id:, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
