# frozen_string_literal: true

module HanzoAI
  module Models
    class TeamDeleteParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute team_ids
      #
      #   @return [Array<String>]
      required :team_ids, HanzoAI::ArrayOf[String]

      # @!attribute [r] llm_changed_by
      #   The llm-changed-by header enables tracking of actions performed by authorized
      #     users on behalf of other users, providing an audit trail for accountability
      #
      #   @return [String, nil]
      optional :llm_changed_by, String, api_name: :"llm-changed-by"

      # @!parse
      #   # @return [String]
      #   attr_writer :llm_changed_by

      # @!parse
      #   # @param team_ids [Array<String>]
      #   # @param llm_changed_by [String]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(team_ids:, llm_changed_by: nil, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
