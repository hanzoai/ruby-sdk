# frozen_string_literal: true

module Hanzoai
  module Models
    class TeamCreateParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # @!attribute [r] admins
      #
      #   @return [Array<Object>, nil]
      optional :admins, Hanzoai::ArrayOf[Hanzoai::Unknown]

      # @!parse
      #   # @return [Array<Object>]
      #   attr_writer :admins

      # @!attribute [r] blocked
      #
      #   @return [Boolean, nil]
      optional :blocked, Hanzoai::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :blocked

      # @!attribute budget_duration
      #
      #   @return [String, nil]
      optional :budget_duration, String, nil?: true

      # @!attribute guardrails
      #
      #   @return [Array<String>, nil]
      optional :guardrails, Hanzoai::ArrayOf[String], nil?: true

      # @!attribute max_budget
      #
      #   @return [Float, nil]
      optional :max_budget, Float, nil?: true

      # @!attribute [r] members
      #
      #   @return [Array<Object>, nil]
      optional :members, Hanzoai::ArrayOf[Hanzoai::Unknown]

      # @!parse
      #   # @return [Array<Object>]
      #   attr_writer :members

      # @!attribute [r] members_with_roles
      #
      #   @return [Array<Hanzoai::Models::Member>, nil]
      optional :members_with_roles, -> { Hanzoai::ArrayOf[Hanzoai::Models::Member] }

      # @!parse
      #   # @return [Array<Hanzoai::Models::Member>]
      #   attr_writer :members_with_roles

      # @!attribute metadata
      #
      #   @return [Object, nil]
      optional :metadata, Hanzoai::Unknown, nil?: true

      # @!attribute model_aliases
      #
      #   @return [Object, nil]
      optional :model_aliases, Hanzoai::Unknown, nil?: true

      # @!attribute [r] models
      #
      #   @return [Array<Object>, nil]
      optional :models, Hanzoai::ArrayOf[Hanzoai::Unknown]

      # @!parse
      #   # @return [Array<Object>]
      #   attr_writer :models

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
      optional :tags, Hanzoai::ArrayOf[Hanzoai::Unknown], nil?: true

      # @!attribute team_alias
      #
      #   @return [String, nil]
      optional :team_alias, String, nil?: true

      # @!attribute team_id
      #
      #   @return [String, nil]
      optional :team_id, String, nil?: true

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
      #   # @param admins [Array<Object>]
      #   # @param blocked [Boolean]
      #   # @param budget_duration [String, nil]
      #   # @param guardrails [Array<String>, nil]
      #   # @param max_budget [Float, nil]
      #   # @param members [Array<Object>]
      #   # @param members_with_roles [Array<Hanzoai::Models::Member>]
      #   # @param metadata [Object, nil]
      #   # @param model_aliases [Object, nil]
      #   # @param models [Array<Object>]
      #   # @param organization_id [String, nil]
      #   # @param rpm_limit [Integer, nil]
      #   # @param tags [Array<Object>, nil]
      #   # @param team_alias [String, nil]
      #   # @param team_id [String, nil]
      #   # @param tpm_limit [Integer, nil]
      #   # @param llm_changed_by [String]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     admins: nil,
      #     blocked: nil,
      #     budget_duration: nil,
      #     guardrails: nil,
      #     max_budget: nil,
      #     members: nil,
      #     members_with_roles: nil,
      #     metadata: nil,
      #     model_aliases: nil,
      #     models: nil,
      #     organization_id: nil,
      #     rpm_limit: nil,
      #     tags: nil,
      #     team_alias: nil,
      #     team_id: nil,
      #     tpm_limit: nil,
      #     llm_changed_by: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
