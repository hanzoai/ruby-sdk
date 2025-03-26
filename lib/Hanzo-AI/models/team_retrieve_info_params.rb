# frozen_string_literal: true

module HanzoAI
  module Models
    class TeamRetrieveInfoParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute [r] team_id
      #   Team ID in the request parameters
      #
      #   @return [String, nil]
      optional :team_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :team_id

      # @!parse
      #   # @param team_id [String]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(team_id: nil, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
