# frozen_string_literal: true

module HanzoAI
  module Models
    class TeamUpdateParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute team_id
      #
      #   @return [String]
      required :team_id, String

      # @!attribute blocked
      #
      #   @return [Boolean, nil]
      optional :blocked, HanzoAI::BooleanModel, nil?: true

      # @!attribute budget_duration
      #
      #   @return [String, nil]
      optional :budget_duration, String, nil?: true

      # @!attribute guardrails
      #
      #   @return [Array<String>, nil]
      optional :guardrails, HanzoAI::ArrayOf[String], nil?: true

      # @!attribute max_budget
      #
      #   @return [Float, nil]
      optional :max_budget, Float, nil?: true

      # @!attribute metadata
      #
      #   @return [Object, nil]
      optional :metadata, HanzoAI::Unknown, nil?: true

      # @!attribute model_aliases
      #
      #   @return [Object, nil]
      optional :model_aliases, HanzoAI::Unknown, nil?: true

      # @!attribute models
      #
      #   @return [Array<Object>, nil]
      optional :models, HanzoAI::ArrayOf[HanzoAI::Unknown], nil?: true

      # @!attribute organization_id
      #
      #   @return [String, nil]
      optional :organization_id, String, nil?: true

      # @!attribute rpm_limit
      #
      #   @return [Integer, nil]
      optional :rpm_limit, Integer, nil?: true

      # @!attribute tags
      #
      #   @return [Array<Object>, nil]
      optional :tags, HanzoAI::ArrayOf[HanzoAI::Unknown], nil?: true

      # @!attribute team_alias
      #
      #   @return [String, nil]
      optional :team_alias, String, nil?: true

      # @!attribute tpm_limit
      #
      #   @return [Integer, nil]
      optional :tpm_limit, Integer, nil?: true

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
      #   # @param team_id [String]
      #   # @param blocked [Boolean, nil]
      #   # @param budget_duration [String, nil]
      #   # @param guardrails [Array<String>, nil]
      #   # @param max_budget [Float, nil]
      #   # @param metadata [Object, nil]
      #   # @param model_aliases [Object, nil]
      #   # @param models [Array<Object>, nil]
      #   # @param organization_id [String, nil]
      #   # @param rpm_limit [Integer, nil]
      #   # @param tags [Array<Object>, nil]
      #   # @param team_alias [String, nil]
      #   # @param tpm_limit [Integer, nil]
      #   # @param llm_changed_by [String]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     team_id:,
      #     blocked: nil,
      #     budget_duration: nil,
      #     guardrails: nil,
      #     max_budget: nil,
      #     metadata: nil,
      #     model_aliases: nil,
      #     models: nil,
      #     organization_id: nil,
      #     rpm_limit: nil,
      #     tags: nil,
      #     team_alias: nil,
      #     tpm_limit: nil,
      #     llm_changed_by: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
