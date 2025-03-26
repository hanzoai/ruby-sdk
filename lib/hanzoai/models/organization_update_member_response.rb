# frozen_string_literal: true

module Hanzoai
  module Models
    class OrganizationUpdateMemberResponse < Hanzoai::BaseModel
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
      #   @return [Hanzoai::Models::OrganizationUpdateMemberResponse::LlmBudgetTable, nil]
      optional :llm_budget_table,
               -> { Hanzoai::Models::OrganizationUpdateMemberResponse::LlmBudgetTable },
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
      #   # @param llm_budget_table [Hanzoai::Models::OrganizationUpdateMemberResponse::LlmBudgetTable, nil]
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
end
