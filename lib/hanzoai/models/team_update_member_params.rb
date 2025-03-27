# frozen_string_literal: true

module Hanzoai
  module Models
    class TeamUpdateMemberParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

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
      #   @return [Symbol, Hanzoai::Models::TeamUpdateMemberParams::Role, nil]
      optional :role, enum: -> { Hanzoai::Models::TeamUpdateMemberParams::Role }, nil?: true

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
      #   # @param role [Symbol, Hanzoai::Models::TeamUpdateMemberParams::Role, nil]
      #   # @param user_email [String, nil]
      #   # @param user_id [String, nil]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(team_id:, max_budget_in_team: nil, role: nil, user_email: nil, user_id: nil, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void

      module Role
        extend Hanzoai::Enum

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
