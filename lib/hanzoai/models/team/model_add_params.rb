# frozen_string_literal: true

module Hanzoai
  module Models
    module Team
      class ModelAddParams < Hanzoai::BaseModel
        # @!parse
        #   extend Hanzoai::RequestParameters::Converter
        include Hanzoai::RequestParameters

        # @!attribute models
        #
        #   @return [Array<String>]
        required :models, Hanzoai::ArrayOf[String]

        # @!attribute team_id
        #
        #   @return [String]
        required :team_id, String

        # @!parse
        #   # @param models [Array<String>]
        #   # @param team_id [String]
        #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(models:, team_id:, request_options: {}, **) = super

        # def initialize: (Hash | Hanzoai::BaseModel) -> void
      end
    end
  end
end
