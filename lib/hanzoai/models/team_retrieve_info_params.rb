# frozen_string_literal: true

module Hanzoai
  module Models
    class TeamRetrieveInfoParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

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
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(team_id: nil, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
