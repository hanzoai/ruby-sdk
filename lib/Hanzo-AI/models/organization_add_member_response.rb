# frozen_string_literal: true

module HanzoAI
  module Models
    class OrganizationAddMemberResponse < HanzoAI::BaseModel
      # @!attribute organization_id
      #
      #   @return [String]
      required :organization_id, String

      # @!attribute updated_organization_memberships
      #
      #   @return [Array<HanzoAI::Models::OrganizationAddMemberResponse::UpdatedOrganizationMembership>]
      required :updated_organization_memberships,
               -> { HanzoAI::ArrayOf[HanzoAI::Models::OrganizationAddMemberResponse::UpdatedOrganizationMembership] }

      # @!attribute updated_users
      #
      #   @return [Array<HanzoAI::Models::OrganizationAddMemberResponse::UpdatedUser>]
      required :updated_users,
               -> { HanzoAI::ArrayOf[HanzoAI::Models::OrganizationAddMemberResponse::UpdatedUser] }

      # @!parse
      #   # @param organization_id [String]
      #   # @param updated_organization_memberships [Array<HanzoAI::Models::OrganizationAddMemberResponse::UpdatedOrganizationMembership>]
      #   # @param updated_users [Array<HanzoAI::Models::OrganizationAddMemberResponse::UpdatedUser>]
      #   #
      #   def initialize(organization_id:, updated_organization_memberships:, updated_users:, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void

      class UpdatedOrganizationMembership < HanzoAI::BaseModel
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
        #   @return [HanzoAI::Models::OrganizationAddMemberResponse::UpdatedOrganizationMembership::LlmBudgetTable, nil]
        optional :llm_budget_table,
                 -> { HanzoAI::Models::OrganizationAddMemberResponse::UpdatedOrganizationMembership::LlmBudgetTable },
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
        optional :user, HanzoAI::Unknown

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
        #   # @param llm_budget_table [HanzoAI::Models::OrganizationAddMemberResponse::UpdatedOrganizationMembership::LlmBudgetTable, nil]
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

        # def initialize: (Hash | HanzoAI::BaseModel) -> void

        class LlmBudgetTable < HanzoAI::BaseModel
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
          optional :model_max_budget, HanzoAI::Unknown, nil?: true

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

          # def initialize: (Hash | HanzoAI::BaseModel) -> void
        end
      end

      class UpdatedUser < HanzoAI::BaseModel
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
        optional :metadata, HanzoAI::Unknown, nil?: true

        # @!attribute model_max_budget
        #
        #   @return [Object, nil]
        optional :model_max_budget, HanzoAI::Unknown, nil?: true

        # @!attribute model_spend
        #
        #   @return [Object, nil]
        optional :model_spend, HanzoAI::Unknown, nil?: true

        # @!attribute [r] models
        #
        #   @return [Array<Object>, nil]
        optional :models, HanzoAI::ArrayOf[HanzoAI::Unknown]

        # @!parse
        #   # @return [Array<Object>]
        #   attr_writer :models

        # @!attribute organization_memberships
        #
        #   @return [Array<HanzoAI::Models::OrganizationAddMemberResponse::UpdatedUser::OrganizationMembership>, nil]
        optional :organization_memberships,
                 -> { HanzoAI::ArrayOf[HanzoAI::Models::OrganizationAddMemberResponse::UpdatedUser::OrganizationMembership] },
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
        optional :teams, HanzoAI::ArrayOf[String]

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
        #   # @param organization_memberships [Array<HanzoAI::Models::OrganizationAddMemberResponse::UpdatedUser::OrganizationMembership>, nil]
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

        # def initialize: (Hash | HanzoAI::BaseModel) -> void

        class OrganizationMembership < HanzoAI::BaseModel
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
          #   @return [HanzoAI::Models::OrganizationAddMemberResponse::UpdatedUser::OrganizationMembership::LlmBudgetTable, nil]
          optional :llm_budget_table,
                   -> { HanzoAI::Models::OrganizationAddMemberResponse::UpdatedUser::OrganizationMembership::LlmBudgetTable },
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
          optional :user, HanzoAI::Unknown

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
          #   # @param llm_budget_table [HanzoAI::Models::OrganizationAddMemberResponse::UpdatedUser::OrganizationMembership::LlmBudgetTable, nil]
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

          # def initialize: (Hash | HanzoAI::BaseModel) -> void

          class LlmBudgetTable < HanzoAI::BaseModel
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
            optional :model_max_budget, HanzoAI::Unknown, nil?: true

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

            # def initialize: (Hash | HanzoAI::BaseModel) -> void
          end
        end
      end
    end
  end
end
