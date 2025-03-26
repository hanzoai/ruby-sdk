# frozen_string_literal: true

module HanzoAI
  module Models
    class BlockTeamRequest < HanzoAI::BaseModel
      # @!attribute team_id
      #
      #   @return [String]
      required :team_id, String

      # @!parse
      #   # @param team_id [String]
      #   #
      #   def initialize(team_id:, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
