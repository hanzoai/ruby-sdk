# frozen_string_literal: true

module HanzoAI
  module Models
    class TeamUpdateMemberResponse < HanzoAI::BaseModel
      # @!attribute team_id
      #
      #   @return [String]
      required :team_id, String

      # @!attribute user_id
      #
      #   @return [String]
      required :user_id, String

      # @!attribute max_budget_in_team
      #
      #   @return [Float, nil]
      optional :max_budget_in_team, Float, nil?: true

      # @!attribute user_email
      #
      #   @return [String, nil]
      optional :user_email, String, nil?: true

      # @!parse
      #   # @param team_id [String]
      #   # @param user_id [String]
      #   # @param max_budget_in_team [Float, nil]
      #   # @param user_email [String, nil]
      #   #
      #   def initialize(team_id:, user_id:, max_budget_in_team: nil, user_email: nil, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
