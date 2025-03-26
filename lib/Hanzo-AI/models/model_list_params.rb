# frozen_string_literal: true

module HanzoAI
  module Models
    class ModelListParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute return_wildcard_routes
      #
      #   @return [Boolean, nil]
      optional :return_wildcard_routes, HanzoAI::BooleanModel, nil?: true

      # @!attribute team_id
      #
      #   @return [String, nil]
      optional :team_id, String, nil?: true

      # @!parse
      #   # @param return_wildcard_routes [Boolean, nil]
      #   # @param team_id [String, nil]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(return_wildcard_routes: nil, team_id: nil, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
