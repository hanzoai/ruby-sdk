# frozen_string_literal: true

module Hanzoai
  module Models
    class TeamCreateResponse < Hanzoai::BaseModel
      # @!attribute team_id
      #
      #   @return [String]
      required :team_id, String

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

      # @!attribute budget_reset_at
      #
      #   @return [Time, nil]
      optional :budget_reset_at, Time, nil?: true

      # @!attribute created_at
      #
      #   @return [Time, nil]
      optional :created_at, Time, nil?: true

      # @!attribute llm_model_table
      #
      #   @return [Hanzoai::Models::TeamCreateResponse::LlmModelTable, nil]
      optional :llm_model_table, -> { Hanzoai::Models::TeamCreateResponse::LlmModelTable }, nil?: true

      # @!attribute max_budget
      #
      #   @return [Float, nil]
      optional :max_budget, Float, nil?: true

      # @!attribute max_parallel_requests
      #
      #   @return [Integer, nil]
      optional :max_parallel_requests, Integer, nil?: true

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

      # @!attribute model_id
      #
      #   @return [Integer, nil]
      optional :model_id, Integer, nil?: true

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

      # @!attribute spend
      #
      #   @return [Float, nil]
      optional :spend, Float, nil?: true

      # @!attribute team_alias
      #
      #   @return [String, nil]
      optional :team_alias, String, nil?: true

      # @!attribute tpm_limit
      #
      #   @return [Integer, nil]
      optional :tpm_limit, Integer, nil?: true

      # @!parse
      #   # @param team_id [String]
      #   # @param admins [Array<Object>]
      #   # @param blocked [Boolean]
      #   # @param budget_duration [String, nil]
      #   # @param budget_reset_at [Time, nil]
      #   # @param created_at [Time, nil]
      #   # @param llm_model_table [Hanzoai::Models::TeamCreateResponse::LlmModelTable, nil]
      #   # @param max_budget [Float, nil]
      #   # @param max_parallel_requests [Integer, nil]
      #   # @param members [Array<Object>]
      #   # @param members_with_roles [Array<Hanzoai::Models::Member>]
      #   # @param metadata [Object, nil]
      #   # @param model_id [Integer, nil]
      #   # @param models [Array<Object>]
      #   # @param organization_id [String, nil]
      #   # @param rpm_limit [Integer, nil]
      #   # @param spend [Float, nil]
      #   # @param team_alias [String, nil]
      #   # @param tpm_limit [Integer, nil]
      #   #
      #   def initialize(
      #     team_id:,
      #     admins: nil,
      #     blocked: nil,
      #     budget_duration: nil,
      #     budget_reset_at: nil,
      #     created_at: nil,
      #     llm_model_table: nil,
      #     max_budget: nil,
      #     max_parallel_requests: nil,
      #     members: nil,
      #     members_with_roles: nil,
      #     metadata: nil,
      #     model_id: nil,
      #     models: nil,
      #     organization_id: nil,
      #     rpm_limit: nil,
      #     spend: nil,
      #     team_alias: nil,
      #     tpm_limit: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Hanzoai::BaseModel) -> void

      class LlmModelTable < Hanzoai::BaseModel
        # @!attribute created_by
        #
        #   @return [String]
        required :created_by, String

        # @!attribute updated_by
        #
        #   @return [String]
        required :updated_by, String

        # @!attribute model_aliases
        #
        #   @return [Object, String, nil]
        optional :model_aliases,
                 union: -> { Hanzoai::Models::TeamCreateResponse::LlmModelTable::ModelAliases },
                 nil?: true

        # @!parse
        #   # @param created_by [String]
        #   # @param updated_by [String]
        #   # @param model_aliases [Object, String, nil]
        #   #
        #   def initialize(created_by:, updated_by:, model_aliases: nil, **) = super

        # def initialize: (Hash | Hanzoai::BaseModel) -> void

        module ModelAliases
          extend Hanzoai::Union

          variant Hanzoai::Unknown

          variant String

          # @!parse
          #   # @return [Array(Object, String)]
          #   def self.variants; end
        end
      end
    end
  end
end
