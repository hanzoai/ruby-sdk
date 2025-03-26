# frozen_string_literal: true

module Hanzoai
  module Models
    class TeamAddMemberResponse < Hanzoai::BaseModel
      # @!attribute team_id
      #
      #   @return [String]
      required :team_id, String

      # @!attribute updated_team_memberships
      #
      #   @return [Array<Hanzoai::Models::TeamAddMemberResponse::UpdatedTeamMembership>]
      required :updated_team_memberships,
               -> { Hanzoai::ArrayOf[Hanzoai::Models::TeamAddMemberResponse::UpdatedTeamMembership] }

      # @!attribute updated_users
      #
      #   @return [Array<Hanzoai::Models::TeamAddMemberResponse::UpdatedUser>]
      required :updated_users, -> { Hanzoai::ArrayOf[Hanzoai::Models::TeamAddMemberResponse::UpdatedUser] }

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
      #   @return [Hanzoai::Models::TeamAddMemberResponse::LlmModelTable, nil]
      optional :llm_model_table, -> { Hanzoai::Models::TeamAddMemberResponse::LlmModelTable }, nil?: true

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
      #   # @param updated_team_memberships [Array<Hanzoai::Models::TeamAddMemberResponse::UpdatedTeamMembership>]
      #   # @param updated_users [Array<Hanzoai::Models::TeamAddMemberResponse::UpdatedUser>]
      #   # @param admins [Array<Object>]
      #   # @param blocked [Boolean]
      #   # @param budget_duration [String, nil]
      #   # @param budget_reset_at [Time, nil]
      #   # @param created_at [Time, nil]
      #   # @param llm_model_table [Hanzoai::Models::TeamAddMemberResponse::LlmModelTable, nil]
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
      #     updated_team_memberships:,
      #     updated_users:,
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

      class UpdatedTeamMembership < Hanzoai::BaseModel
        # @!attribute budget_id
        #
        #   @return [String]
        required :budget_id, String

        # @!attribute llm_budget_table
        #   Represents user-controllable params for a LLM_BudgetTable record
        #
        #   @return [Hanzoai::Models::TeamAddMemberResponse::UpdatedTeamMembership::LlmBudgetTable, nil]
        required :llm_budget_table,
                 -> { Hanzoai::Models::TeamAddMemberResponse::UpdatedTeamMembership::LlmBudgetTable },
                 nil?: true

        # @!attribute team_id
        #
        #   @return [String]
        required :team_id, String

        # @!attribute user_id
        #
        #   @return [String]
        required :user_id, String

        # @!parse
        #   # @param budget_id [String]
        #   # @param llm_budget_table [Hanzoai::Models::TeamAddMemberResponse::UpdatedTeamMembership::LlmBudgetTable, nil]
        #   # @param team_id [String]
        #   # @param user_id [String]
        #   #
        #   def initialize(budget_id:, llm_budget_table:, team_id:, user_id:, **) = super

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

      class UpdatedUser < Hanzoai::BaseModel
        # @!attribute user_id
        #
        #   @return [String]
        required :user_id, String

        # @!attribute budget_duration
        #
        #   @return [String, nil]
        optional :budget_duration, String, nil?: true

        # @!attribute budget_reset_at
        #
        #   @return [Time, nil]
        optional :budget_reset_at, Time, nil?: true

        # @!attribute max_budget
        #
        #   @return [Float, nil]
        optional :max_budget, Float, nil?: true

        # @!attribute metadata
        #
        #   @return [Object, nil]
        optional :metadata, Hanzoai::Unknown, nil?: true

        # @!attribute model_max_budget
        #
        #   @return [Object, nil]
        optional :model_max_budget, Hanzoai::Unknown, nil?: true

        # @!attribute model_spend
        #
        #   @return [Object, nil]
        optional :model_spend, Hanzoai::Unknown, nil?: true

        # @!attribute [r] models
        #
        #   @return [Array<Object>, nil]
        optional :models, Hanzoai::ArrayOf[Hanzoai::Unknown]

        # @!parse
        #   # @return [Array<Object>]
        #   attr_writer :models

        # @!attribute organization_memberships
        #
        #   @return [Array<Hanzoai::Models::TeamAddMemberResponse::UpdatedUser::OrganizationMembership>, nil]
        optional :organization_memberships,
                 -> { Hanzoai::ArrayOf[Hanzoai::Models::TeamAddMemberResponse::UpdatedUser::OrganizationMembership] },
                 nil?: true

        # @!attribute rpm_limit
        #
        #   @return [Integer, nil]
        optional :rpm_limit, Integer, nil?: true

        # @!attribute [r] spend
        #
        #   @return [Float, nil]
        optional :spend, Float

        # @!parse
        #   # @return [Float]
        #   attr_writer :spend

        # @!attribute sso_user_id
        #
        #   @return [String, nil]
        optional :sso_user_id, String, nil?: true

        # @!attribute [r] teams
        #
        #   @return [Array<String>, nil]
        optional :teams, Hanzoai::ArrayOf[String]

        # @!parse
        #   # @return [Array<String>]
        #   attr_writer :teams

        # @!attribute tpm_limit
        #
        #   @return [Integer, nil]
        optional :tpm_limit, Integer, nil?: true

        # @!attribute user_email
        #
        #   @return [String, nil]
        optional :user_email, String, nil?: true

        # @!attribute user_role
        #
        #   @return [String, nil]
        optional :user_role, String, nil?: true

        # @!parse
        #   # @param user_id [String]
        #   # @param budget_duration [String, nil]
        #   # @param budget_reset_at [Time, nil]
        #   # @param max_budget [Float, nil]
        #   # @param metadata [Object, nil]
        #   # @param model_max_budget [Object, nil]
        #   # @param model_spend [Object, nil]
        #   # @param models [Array<Object>]
        #   # @param organization_memberships [Array<Hanzoai::Models::TeamAddMemberResponse::UpdatedUser::OrganizationMembership>, nil]
        #   # @param rpm_limit [Integer, nil]
        #   # @param spend [Float]
        #   # @param sso_user_id [String, nil]
        #   # @param teams [Array<String>]
        #   # @param tpm_limit [Integer, nil]
        #   # @param user_email [String, nil]
        #   # @param user_role [String, nil]
        #   #
        #   def initialize(
        #     user_id:,
        #     budget_duration: nil,
        #     budget_reset_at: nil,
        #     max_budget: nil,
        #     metadata: nil,
        #     model_max_budget: nil,
        #     model_spend: nil,
        #     models: nil,
        #     organization_memberships: nil,
        #     rpm_limit: nil,
        #     spend: nil,
        #     sso_user_id: nil,
        #     teams: nil,
        #     tpm_limit: nil,
        #     user_email: nil,
        #     user_role: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Hanzoai::BaseModel) -> void

        class OrganizationMembership < Hanzoai::BaseModel
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
          #   @return [Hanzoai::Models::TeamAddMemberResponse::UpdatedUser::OrganizationMembership::LlmBudgetTable, nil]
          optional :llm_budget_table,
                   -> { Hanzoai::Models::TeamAddMemberResponse::UpdatedUser::OrganizationMembership::LlmBudgetTable },
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
          #   # @param llm_budget_table [Hanzoai::Models::TeamAddMemberResponse::UpdatedUser::OrganizationMembership::LlmBudgetTable, nil]
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
      end

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
                 union: -> { Hanzoai::Models::TeamAddMemberResponse::LlmModelTable::ModelAliases },
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
