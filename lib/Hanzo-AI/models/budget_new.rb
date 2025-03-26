# frozen_string_literal: true

module HanzoAI
  module Models
    class BudgetNew < HanzoAI::BaseModel
      # @!attribute budget_duration
      #   Max duration budget should be set for (e.g. '1hr', '1d', '28d')
      #
      #   @return [String, nil]
      optional :budget_duration, String, nil?: true

      # @!attribute budget_id
      #   The unique budget id.
      #
      #   @return [String, nil]
      optional :budget_id, String, nil?: true

      # @!attribute max_budget
      #   Requests will fail if this budget (in USD) is exceeded.
      #
      #   @return [Float, nil]
      optional :max_budget, Float, nil?: true

      # @!attribute max_parallel_requests
      #   Max concurrent requests allowed for this budget id.
      #
      #   @return [Integer, nil]
      optional :max_parallel_requests, Integer, nil?: true

      # @!attribute model_max_budget
      #   Max budget for each model (e.g. {'gpt-4o': {'max_budget': '0.0000001',
      #     'budget_duration': '1d', 'tpm_limit': 1000, 'rpm_limit': 1000}})
      #
      #   @return [Hash{Symbol=>HanzoAI::Models::BudgetNew::ModelMaxBudget}, nil]
      optional :model_max_budget, -> { HanzoAI::HashOf[HanzoAI::Models::BudgetNew::ModelMaxBudget] }, nil?: true

      # @!attribute rpm_limit
      #   Max requests per minute, allowed for this budget id.
      #
      #   @return [Integer, nil]
      optional :rpm_limit, Integer, nil?: true

      # @!attribute soft_budget
      #   Requests will NOT fail if this is exceeded. Will fire alerting though.
      #
      #   @return [Float, nil]
      optional :soft_budget, Float, nil?: true

      # @!attribute tpm_limit
      #   Max tokens per minute, allowed for this budget id.
      #
      #   @return [Integer, nil]
      optional :tpm_limit, Integer, nil?: true

      # @!parse
      #   # @param budget_duration [String, nil]
      #   # @param budget_id [String, nil]
      #   # @param max_budget [Float, nil]
      #   # @param max_parallel_requests [Integer, nil]
      #   # @param model_max_budget [Hash{Symbol=>HanzoAI::Models::BudgetNew::ModelMaxBudget}, nil]
      #   # @param rpm_limit [Integer, nil]
      #   # @param soft_budget [Float, nil]
      #   # @param tpm_limit [Integer, nil]
      #   #
      #   def initialize(
      #     budget_duration: nil,
      #     budget_id: nil,
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

      class ModelMaxBudget < HanzoAI::BaseModel
        # @!attribute budget_duration
        #
        #   @return [String, nil]
        optional :budget_duration, String, nil?: true

        # @!attribute max_budget
        #
        #   @return [Float, nil]
        optional :max_budget, Float, nil?: true

        # @!attribute rpm_limit
        #
        #   @return [Integer, nil]
        optional :rpm_limit, Integer, nil?: true

        # @!attribute tpm_limit
        #
        #   @return [Integer, nil]
        optional :tpm_limit, Integer, nil?: true

        # @!parse
        #   # @param budget_duration [String, nil]
        #   # @param max_budget [Float, nil]
        #   # @param rpm_limit [Integer, nil]
        #   # @param tpm_limit [Integer, nil]
        #   #
        #   def initialize(budget_duration: nil, max_budget: nil, rpm_limit: nil, tpm_limit: nil, **) = super

        # def initialize: (Hash | HanzoAI::BaseModel) -> void
      end
    end
  end
end
