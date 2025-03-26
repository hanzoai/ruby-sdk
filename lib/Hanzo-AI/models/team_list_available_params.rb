# frozen_string_literal: true

module HanzoAI
  module Models
    class TeamListAvailableParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute [r] response_model
      #
      #   @return [Object, nil]
      optional :response_model, HanzoAI::Unknown

      # @!parse
      #   # @return [Object]
      #   attr_writer :response_model

      # @!parse
      #   # @param response_model [Object]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(response_model: nil, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
