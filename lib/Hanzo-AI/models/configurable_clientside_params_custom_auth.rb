# frozen_string_literal: true

module HanzoAI
  module Models
    class ConfigurableClientsideParamsCustomAuth < HanzoAI::BaseModel
      # @!attribute api_base
      #
      #   @return [String]
      required :api_base, String

      # @!parse
      #   # @param api_base [String]
      #   #
      #   def initialize(api_base:, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
