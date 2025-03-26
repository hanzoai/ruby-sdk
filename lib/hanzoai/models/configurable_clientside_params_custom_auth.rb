# frozen_string_literal: true

module Hanzoai
  module Models
    class ConfigurableClientsideParamsCustomAuth < Hanzoai::BaseModel
      # @!attribute api_base
      #
      #   @return [String]
      required :api_base, String

      # @!parse
      #   # @param api_base [String]
      #   #
      #   def initialize(api_base:, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
