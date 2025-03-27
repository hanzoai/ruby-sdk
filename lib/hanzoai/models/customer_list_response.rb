# frozen_string_literal: true

module Hanzoai
  module Models
    class CustomerListResponseItem < Hanzoai::BaseModel
      # @!attribute blocked
      #
      #   @return [Boolean]
      required :blocked, Hanzoai::BooleanModel

      # @!attribute user_id
      #
      #   @return [String]
      required :user_id, String

      # @!attribute alias_
      #
      #   @return [String, nil]
      optional :alias_, String, api_name: :alias, nil?: true

      # @!attribute allowed_model_region
      #
      #   @return [Symbol, Hanzoai::Models::CustomerListResponseItem::AllowedModelRegion, nil]
      optional :allowed_model_region,
               enum: -> { Hanzoai::Models::CustomerListResponseItem::AllowedModelRegion },
               nil?: true

      # @!attribute default_model
      #
      #   @return [String, nil]
      optional :default_model, String, nil?: true

      # @!attribute llm_budget_table
      #   Represents user-controllable params for a LLM_BudgetTable record
      #
      #   @return [Hanzoai::Models::CustomerListResponseItem::LlmBudgetTable, nil]
      optional :llm_budget_table, -> { Hanzoai::Models::CustomerListResponseItem::LlmBudgetTable }, nil?: true

      # @!attribute [r] spend
      #
      #   @return [Float, nil]
      optional :spend, Float

      # @!parse
      #   # @return [Float]
      #   attr_writer :spend

      # @!parse
      #   # @param blocked [Boolean]
      #   # @param user_id [String]
      #   # @param alias_ [String, nil]
      #   # @param allowed_model_region [Symbol, Hanzoai::Models::CustomerListResponseItem::AllowedModelRegion, nil]
      #   # @param default_model [String, nil]
      #   # @param llm_budget_table [Hanzoai::Models::CustomerListResponseItem::LlmBudgetTable, nil]
      #   # @param spend [Float]
      #   #
      #   def initialize(
      #     blocked:,
      #     user_id:,
      #     alias_: nil,
      #     allowed_model_region: nil,
      #     default_model: nil,
      #     llm_budget_table: nil,
      #     spend: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Hanzoai::BaseModel) -> void

      module AllowedModelRegion
        extend Hanzoai::Enum

        EU = :eu
        US = :us

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

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

    CustomerListResponse = Hanzoai::ArrayOf[-> { Hanzoai::Models::CustomerListResponseItem }]
  end
end
