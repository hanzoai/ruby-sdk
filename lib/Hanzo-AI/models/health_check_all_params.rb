# frozen_string_literal: true

module HanzoAI
  module Models
    class HealthCheckAllParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute model
      #   Specify the model name (optional)
      #
      #   @return [String, nil]
      optional :model, String, nil?: true

      # @!parse
      #   # @param model [String, nil]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(model: nil, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
