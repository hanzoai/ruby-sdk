# frozen_string_literal: true

module Hanzoai
  module Models
    class BlockTeamRequest < Hanzoai::BaseModel
      # @!attribute team_id
      #
      #   @return [String]
      required :team_id, String

      # @!parse
      #   # @param team_id [String]
      #   #
      #   def initialize(team_id:, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
