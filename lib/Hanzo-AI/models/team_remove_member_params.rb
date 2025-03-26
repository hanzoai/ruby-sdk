# frozen_string_literal: true

module HanzoAI
  module Models
    class TeamRemoveMemberParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute team_id
      #
      #   @return [String]
      required :team_id, String

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
      #   # @param user_email [String, nil]
      #   # @param user_id [String, nil]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(team_id:, user_email: nil, user_id: nil, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
