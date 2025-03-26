# frozen_string_literal: true

module HanzoAI
  module Models
    module Team
      class ModelAddParams < HanzoAI::BaseModel
        # @!parse
        #   extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

        # @!attribute models
        #
        #   @return [Array<String>]
        required :models, HanzoAI::ArrayOf[String]

        # @!attribute team_id
        #
        #   @return [String]
        required :team_id, String

        # @!parse
        #   # @param models [Array<String>]
        #   # @param team_id [String]
        #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(models:, team_id:, request_options: {}, **) = super

        # def initialize: (Hash | HanzoAI::BaseModel) -> void
      end
    end
  end
end
