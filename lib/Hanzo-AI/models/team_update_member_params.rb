# frozen_string_literal: true

module HanzoAI
  module Models
    class TeamUpdateMemberParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute team_id
      #
      #   @return [String]
      required :team_id, String

      # @!attribute max_budget_in_team
      #
      #   @return [Float, nil]
      optional :max_budget_in_team, Float, nil?: true

      # @!attribute role
      #
      #   @return [Symbol, HanzoAI::Models::TeamUpdateMemberParams::Role, nil]
      optional :role, enum: -> { HanzoAI::Models::TeamUpdateMemberParams::Role }, nil?: true

      # @!attribute user_email
      #
      #   @return [String, nil]
      optional :user_email, String, nil?: true

      # @!attribute user_id
      #
      #   @return [String, nil]
      optional :user_id, String, nil?: true

      # @!parse
      #   # @param team_id [String]
      #   # @param max_budget_in_team [Float, nil]
      #   # @param role [Symbol, HanzoAI::Models::TeamUpdateMemberParams::Role, nil]
      #   # @param user_email [String, nil]
      #   # @param user_id [String, nil]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(team_id:, max_budget_in_team: nil, role: nil, user_email: nil, user_id: nil, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void

      module Role
        extend HanzoAI::Enum

        ADMIN = :admin
        USER = :user

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
