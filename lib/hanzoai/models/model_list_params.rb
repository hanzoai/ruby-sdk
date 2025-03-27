# frozen_string_literal: true

module Hanzoai
  module Models
    class ModelListParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # @!attribute return_wildcard_routes
      #
      #   @return [Boolean, nil]
      optional :return_wildcard_routes, Hanzoai::BooleanModel, nil?: true

      # @!attribute team_id
      #
      #   @return [String, nil]
      optional :team_id, String, nil?: true

      # @!parse
      #   # @param return_wildcard_routes [Boolean, nil]
      #   # @param team_id [String, nil]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(return_wildcard_routes: nil, team_id: nil, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
