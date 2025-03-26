# frozen_string_literal: true

module Hanzoai
  module Resources
    class Budget
      # Create a new budget object. Can apply this to teams, orgs, end-users, keys.
      #
      #   Parameters:
      #
      #   - budget_duration: Optional[str] - Budget reset period ("30d", "1h", etc.)
      #   - budget_id: Optional[str] - The id of the budget. If not provided, a new id
      #     will be generated.
      #   - max_budget: Optional[float] - The max budget for the budget.
      #   - soft_budget: Optional[float] - The soft budget for the budget.
      #   - max_parallel_requests: Optional[int] - The max number of parallel requests for
      #     the budget.
      #   - tpm_limit: Optional[int] - The tokens per minute limit for the budget.
      #   - rpm_limit: Optional[int] - The requests per minute limit for the budget.
      #   - model_max_budget: Optional[dict] - Specify max budget for a given model.
      #     Example: {"openai/gpt-4o-mini": {"max_budget": 100.0, "budget_duration": "1d",
      #     "tpm_limit": 100000, "rpm_limit": 100000}}
      #
      # @param params [Hanzoai::Models::BudgetCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :budget_duration Max duration budget should be set for (e.g. '1hr', '1d', '28d')
      #
      #   @option params [String, nil] :budget_id The unique budget id.
      #
      #   @option params [Float, nil] :max_budget Requests will fail if this budget (in USD) is exceeded.
      #
      #   @option params [Integer, nil] :max_parallel_requests Max concurrent requests allowed for this budget id.
      #
      #   @option params [Hash{Symbol=>Hanzoai::Models::BudgetNew::ModelMaxBudget}, nil] :model_max_budget Max budget for each model (e.g. {'gpt-4o': {'max_budget': '0.0000001',
      #     'budget_duration': '1d', 'tpm_limit': 1000, 'rpm_limit': 1000}})
      #
      #   @option params [Integer, nil] :rpm_limit Max requests per minute, allowed for this budget id.
      #
      #   @option params [Float, nil] :soft_budget Requests will NOT fail if this is exceeded. Will fire alerting though.
      #
      #   @option params [Integer, nil] :tpm_limit Max tokens per minute, allowed for this budget id.
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(params = {})
        parsed, options = Hanzoai::Models::BudgetCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "budget/new",
          body: parsed,
          model: Hanzoai::Unknown,
          options: options
        )
      end

      # Update an existing budget object.
      #
      #   Parameters:
      #
      #   - budget_duration: Optional[str] - Budget reset period ("30d", "1h", etc.)
      #   - budget_id: Optional[str] - The id of the budget. If not provided, a new id
      #     will be generated.
      #   - max_budget: Optional[float] - The max budget for the budget.
      #   - soft_budget: Optional[float] - The soft budget for the budget.
      #   - max_parallel_requests: Optional[int] - The max number of parallel requests for
      #     the budget.
      #   - tpm_limit: Optional[int] - The tokens per minute limit for the budget.
      #   - rpm_limit: Optional[int] - The requests per minute limit for the budget.
      #   - model_max_budget: Optional[dict] - Specify max budget for a given model.
      #     Example: {"openai/gpt-4o-mini": {"max_budget": 100.0, "budget_duration": "1d",
      #     "tpm_limit": 100000, "rpm_limit": 100000}}
      #
      # @param params [Hanzoai::Models::BudgetUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :budget_duration Max duration budget should be set for (e.g. '1hr', '1d', '28d')
      #
      #   @option params [String, nil] :budget_id The unique budget id.
      #
      #   @option params [Float, nil] :max_budget Requests will fail if this budget (in USD) is exceeded.
      #
      #   @option params [Integer, nil] :max_parallel_requests Max concurrent requests allowed for this budget id.
      #
      #   @option params [Hash{Symbol=>Hanzoai::Models::BudgetNew::ModelMaxBudget}, nil] :model_max_budget Max budget for each model (e.g. {'gpt-4o': {'max_budget': '0.0000001',
      #     'budget_duration': '1d', 'tpm_limit': 1000, 'rpm_limit': 1000}})
      #
      #   @option params [Integer, nil] :rpm_limit Max requests per minute, allowed for this budget id.
      #
      #   @option params [Float, nil] :soft_budget Requests will NOT fail if this is exceeded. Will fire alerting though.
      #
      #   @option params [Integer, nil] :tpm_limit Max tokens per minute, allowed for this budget id.
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def update(params = {})
        parsed, options = Hanzoai::Models::BudgetUpdateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "budget/update",
          body: parsed,
          model: Hanzoai::Unknown,
          options: options
        )
      end

      # List all the created budgets in proxy db. Used on Admin UI.
      #
      # @param params [Hanzoai::Models::BudgetListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def list(params = {})
        @client.request(
          method: :get,
          path: "budget/list",
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Delete budget
      #
      #   Parameters:
      #
      #   - id: str - The budget id to delete
      #
      # @param params [Hanzoai::Models::BudgetDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :id
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def delete(params)
        parsed, options = Hanzoai::Models::BudgetDeleteParams.dump_request(params)
        @client.request(
          method: :post,
          path: "budget/delete",
          body: parsed,
          model: Hanzoai::Unknown,
          options: options
        )
      end

      # Get the budget id specific information
      #
      #   Parameters:
      #
      #   - budgets: List[str] - The list of budget ids to get information for
      #
      # @param params [Hanzoai::Models::BudgetInfoParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<String>] :budgets
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def info(params)
        parsed, options = Hanzoai::Models::BudgetInfoParams.dump_request(params)
        @client.request(
          method: :post,
          path: "budget/info",
          body: parsed,
          model: Hanzoai::Unknown,
          options: options
        )
      end

      # Get list of configurable params + current value for a budget item + description
      #   of each field
      #
      #   Used on Admin UI.
      #
      #   Query Parameters:
      #
      #   - budget_id: str - The budget id to get information for
      #
      # @param params [Hanzoai::Models::BudgetSettingsParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :budget_id
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def settings(params)
        parsed, options = Hanzoai::Models::BudgetSettingsParams.dump_request(params)
        @client.request(
          method: :get,
          path: "budget/settings",
          query: parsed,
          model: Hanzoai::Unknown,
          options: options
        )
      end

      # @param client [Hanzoai::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
