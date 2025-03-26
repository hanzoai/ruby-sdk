# frozen_string_literal: true

module Hanzoai
  module Models
    class OrganizationUpdateResponse < Hanzoai::BaseModel
      # @!attribute budget_id
      #
      #   @return [String]
      required :budget_id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute created_by
      #
      #   @return [String]
      required :created_by, String

      # @!attribute models
      #
      #   @return [Array<String>]
      required :models, Hanzoai::ArrayOf[String]

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute updated_by
      #
      #   @return [String]
      required :updated_by, String

      # @!attribute llm_budget_table
      #   Represents user-controllable params for a LLM_BudgetTable record
      #
      #   @return [Hanzoai::Models::OrganizationUpdateResponse::LlmBudgetTable, nil]
      optional :llm_budget_table, -> { Hanzoai::Models::OrganizationUpdateResponse::LlmBudgetTable }, nil?: true

      # @!attribute [r] members
      #
      #   @return [Array<Hanzoai::Models::OrganizationUpdateResponse::Member>, nil]
      optional :members, -> { Hanzoai::ArrayOf[Hanzoai::Models::OrganizationUpdateResponse::Member] }

      # @!parse
      #   # @return [Array<Hanzoai::Models::OrganizationUpdateResponse::Member>]
      #   attr_writer :members

      # @!attribute metadata
      #
      #   @return [Object, nil]
      optional :metadata, Hanzoai::Unknown, nil?: true

      # @!attribute organization_alias
      #
      #   @return [String, nil]
      optional :organization_alias, String, nil?: true

      # @!attribute organization_id
      #
      #   @return [String, nil]
      optional :organization_id, String, nil?: true

      # @!attribute [r] spend
      #
      #   @return [Float, nil]
      optional :spend, Float

      # @!parse
      #   # @return [Float]
      #   attr_writer :spend

      # @!attribute [r] teams
      #
      #   @return [Array<Hanzoai::Models::OrganizationUpdateResponse::Team>, nil]
      optional :teams, -> { Hanzoai::ArrayOf[Hanzoai::Models::OrganizationUpdateResponse::Team] }

      # @!parse
      #   # @return [Array<Hanzoai::Models::OrganizationUpdateResponse::Team>]
      #   attr_writer :teams

      # @!parse
      #   # Returned by the /organization/info endpoint and /organization/list endpoint
      #   #
      #   # @param budget_id [String]
      #   # @param created_at [Time]
      #   # @param created_by [String]
      #   # @param models [Array<String>]
      #   # @param updated_at [Time]
      #   # @param updated_by [String]
      #   # @param llm_budget_table [Hanzoai::Models::OrganizationUpdateResponse::LlmBudgetTable, nil]
      #   # @param members [Array<Hanzoai::Models::OrganizationUpdateResponse::Member>]
      #   # @param metadata [Object, nil]
      #   # @param organization_alias [String, nil]
      #   # @param organization_id [String, nil]
      #   # @param spend [Float]
      #   # @param teams [Array<Hanzoai::Models::OrganizationUpdateResponse::Team>]
      #   #
      #   def initialize(
      #     budget_id:,
      #     created_at:,
      #     created_by:,
      #     models:,
      #     updated_at:,
      #     updated_by:,
      #     llm_budget_table: nil,
      #     members: nil,
      #     metadata: nil,
      #     organization_alias: nil,
      #     organization_id: nil,
      #     spend: nil,
      #     teams: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Hanzoai::BaseModel) -> void

      class LlmBudgetTable < Hanzoai::BaseModel
        # @!attribute budget_duration
        #
        #   @return [String, nil]
        optional :budget_duration, String, nil?: true

        # @!attribute max_budget
        #
        #   @return [Float, nil]
        optional :max_budget, Float, nil?: true

        # @!attribute max_parallel_requests
        #
        #   @return [Integer, nil]
        optional :max_parallel_requests, Integer, nil?: true

        # @!attribute model_max_budget
        #
        #   @return [Object, nil]
        optional :model_max_budget, Hanzoai::Unknown, nil?: true

        # @!attribute rpm_limit
        #
        #   @return [Integer, nil]
        optional :rpm_limit, Integer, nil?: true

        # @!attribute soft_budget
        #
        #   @return [Float, nil]
        optional :soft_budget, Float, nil?: true

        # @!attribute tpm_limit
        #
        #   @return [Integer, nil]
        optional :tpm_limit, Integer, nil?: true

        # @!parse
        #   # Represents user-controllable params for a LLM_BudgetTable record
        #   #
        #   # @param budget_duration [String, nil]
        #   # @param max_budget [Float, nil]
        #   # @param max_parallel_requests [Integer, nil]
        #   # @param model_max_budget [Object, nil]
        #   # @param rpm_limit [Integer, nil]
        #   # @param soft_budget [Float, nil]
        #   # @param tpm_limit [Integer, nil]
        #   #
        #   def initialize(
        #     budget_duration: nil,
        #     max_budget: nil,
        #     max_parallel_requests: nil,
        #     model_max_budget: nil,
        #     rpm_limit: nil,
        #     soft_budget: nil,
        #     tpm_limit: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Hanzoai::BaseModel) -> void
      end

      class Member < Hanzoai::BaseModel
        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute organization_id
        #
        #   @return [String]
        required :organization_id, String

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute user_id
        #
        #   @return [String]
        required :user_id, String

        # @!attribute budget_id
        #
        #   @return [String, nil]
        optional :budget_id, String, nil?: true

        # @!attribute llm_budget_table
        #   Represents user-controllable params for a LLM_BudgetTable record
        #
        #   @return [Hanzoai::Models::OrganizationUpdateResponse::Member::LlmBudgetTable, nil]
        optional :llm_budget_table,
                 -> { Hanzoai::Models::OrganizationUpdateResponse::Member::LlmBudgetTable },
                 nil?: true

        # @!attribute [r] spend
        #
        #   @return [Float, nil]
        optional :spend, Float

        # @!parse
        #   # @return [Float]
        #   attr_writer :spend

        # @!attribute [r] user
        #
        #   @return [Object, nil]
        optional :user, Hanzoai::Unknown

        # @!parse
        #   # @return [Object]
        #   attr_writer :user

        # @!attribute user_role
        #
        #   @return [String, nil]
        optional :user_role, String, nil?: true

        # @!parse
        #   # This is the table that track what organizations a user belongs to and users
        #   #   spend within the organization
        #   #
        #   # @param created_at [Time]
        #   # @param organization_id [String]
        #   # @param updated_at [Time]
        #   # @param user_id [String]
        #   # @param budget_id [String, nil]
        #   # @param llm_budget_table [Hanzoai::Models::OrganizationUpdateResponse::Member::LlmBudgetTable, nil]
        #   # @param spend [Float]
        #   # @param user [Object]
        #   # @param user_role [String, nil]
        #   #
        #   def initialize(
        #     created_at:,
        #     organization_id:,
        #     updated_at:,
        #     user_id:,
        #     budget_id: nil,
        #     llm_budget_table: nil,
        #     spend: nil,
        #     user: nil,
        #     user_role: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Hanzoai::BaseModel) -> void

        class LlmBudgetTable < Hanzoai::BaseModel
          # @!attribute budget_duration
          #
          #   @return [String, nil]
          optional :budget_duration, String, nil?: true

          # @!attribute max_budget
          #
          #   @return [Float, nil]
          optional :max_budget, Float, nil?: true

          # @!attribute max_parallel_requests
          #
          #   @return [Integer, nil]
          optional :max_parallel_requests, Integer, nil?: true

          # @!attribute model_max_budget
          #
          #   @return [Object, nil]
          optional :model_max_budget, Hanzoai::Unknown, nil?: true

          # @!attribute rpm_limit
          #
          #   @return [Integer, nil]
          optional :rpm_limit, Integer, nil?: true

          # @!attribute soft_budget
          #
          #   @return [Float, nil]
          optional :soft_budget, Float, nil?: true

          # @!attribute tpm_limit
          #
          #   @return [Integer, nil]
          optional :tpm_limit, Integer, nil?: true

          # @!parse
          #   # Represents user-controllable params for a LLM_BudgetTable record
          #   #
          #   # @param budget_duration [String, nil]
          #   # @param max_budget [Float, nil]
          #   # @param max_parallel_requests [Integer, nil]
          #   # @param model_max_budget [Object, nil]
          #   # @param rpm_limit [Integer, nil]
          #   # @param soft_budget [Float, nil]
          #   # @param tpm_limit [Integer, nil]
          #   #
          #   def initialize(
          #     budget_duration: nil,
          #     max_budget: nil,
          #     max_parallel_requests: nil,
          #     model_max_budget: nil,
          #     rpm_limit: nil,
          #     soft_budget: nil,
          #     tpm_limit: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Hanzoai::BaseModel) -> void
        end
      end

      class Team < Hanzoai::BaseModel
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
        #   @return [Hanzoai::Models::OrganizationUpdateResponse::Team::LlmModelTable, nil]
        optional :llm_model_table,
                 -> { Hanzoai::Models::OrganizationUpdateResponse::Team::LlmModelTable },
                 nil?: true

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
        #   # @param llm_model_table [Hanzoai::Models::OrganizationUpdateResponse::Team::LlmModelTable, nil]
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
                   union: -> { Hanzoai::Models::OrganizationUpdateResponse::Team::LlmModelTable::ModelAliases },
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
end
