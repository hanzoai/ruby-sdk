# frozen_string_literal: true

module Hanzoai
  module Models
    class TeamListAvailableParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # @!attribute [r] response_model
      #
      #   @return [Object, nil]
      optional :response_model, Hanzoai::Unknown

      # @!parse
      #   # @return [Object]
      #   attr_writer :response_model

      # @!parse
      #   # @param response_model [Object]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(response_model: nil, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
