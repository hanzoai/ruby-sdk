# frozen_string_literal: true

module HanzoAI
  module Models
    class ModelGroupRetrieveInfoParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute model_group
      #
      #   @return [String, nil]
      optional :model_group, String, nil?: true

      # @!parse
      #   # @param model_group [String, nil]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(model_group: nil, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
