# frozen_string_literal: true

module HanzoAI
  module Models
    class BudgetSettingsParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute budget_id
      #
      #   @return [String]
      required :budget_id, String

      # @!parse
      #   # @param budget_id [String]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(budget_id:, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
