# typed: strong

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
      sig do
        params(
          budget_duration: T.nilable(String),
          budget_id: T.nilable(String),
          max_budget: T.nilable(Float),
          max_parallel_requests: T.nilable(Integer),
          model_max_budget: T.nilable(T::Hash[Symbol, T.any(Hanzoai::Models::BudgetNew::ModelMaxBudget, Hanzoai::Util::AnyHash)]),
          rpm_limit: T.nilable(Integer),
          soft_budget: T.nilable(Float),
          tpm_limit: T.nilable(Integer),
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def create(
        # Max duration budget should be set for (e.g. '1hr', '1d', '28d')
        budget_duration: nil,
        # The unique budget id.
        budget_id: nil,
        # Requests will fail if this budget (in USD) is exceeded.
        max_budget: nil,
        # Max concurrent requests allowed for this budget id.
        max_parallel_requests: nil,
        # Max budget for each model (e.g. {'gpt-4o': {'max_budget': '0.0000001',
        #   'budget_duration': '1d', 'tpm_limit': 1000, 'rpm_limit': 1000}})
        model_max_budget: nil,
        # Max requests per minute, allowed for this budget id.
        rpm_limit: nil,
        # Requests will NOT fail if this is exceeded. Will fire alerting though.
        soft_budget: nil,
        # Max tokens per minute, allowed for this budget id.
        tpm_limit: nil,
        request_options: {}
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
      sig do
        params(
          budget_duration: T.nilable(String),
          budget_id: T.nilable(String),
          max_budget: T.nilable(Float),
          max_parallel_requests: T.nilable(Integer),
          model_max_budget: T.nilable(T::Hash[Symbol, T.any(Hanzoai::Models::BudgetNew::ModelMaxBudget, Hanzoai::Util::AnyHash)]),
          rpm_limit: T.nilable(Integer),
          soft_budget: T.nilable(Float),
          tpm_limit: T.nilable(Integer),
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def update(
        # Max duration budget should be set for (e.g. '1hr', '1d', '28d')
        budget_duration: nil,
        # The unique budget id.
        budget_id: nil,
        # Requests will fail if this budget (in USD) is exceeded.
        max_budget: nil,
        # Max concurrent requests allowed for this budget id.
        max_parallel_requests: nil,
        # Max budget for each model (e.g. {'gpt-4o': {'max_budget': '0.0000001',
        #   'budget_duration': '1d', 'tpm_limit': 1000, 'rpm_limit': 1000}})
        model_max_budget: nil,
        # Max requests per minute, allowed for this budget id.
        rpm_limit: nil,
        # Requests will NOT fail if this is exceeded. Will fire alerting though.
        soft_budget: nil,
        # Max tokens per minute, allowed for this budget id.
        tpm_limit: nil,
        request_options: {}
      )
      end

      # List all the created budgets in proxy db. Used on Admin UI.
      sig do
        params(request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)))
          .returns(T.anything)
      end
      def list(request_options: {})
      end

      # Delete budget
      #
      #   Parameters:
      #
      #   - id: str - The budget id to delete
      sig do
        params(id: String, request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)))
          .returns(T.anything)
      end
      def delete(id:, request_options: {})
      end

      # Get the budget id specific information
      #
      #   Parameters:
      #
      #   - budgets: List[str] - The list of budget ids to get information for
      sig do
        params(
          budgets: T::Array[String],
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def info(budgets:, request_options: {})
      end

      # Get list of configurable params + current value for a budget item + description
      #   of each field
      #
      #   Used on Admin UI.
      #
      #   Query Parameters:
      #
      #   - budget_id: str - The budget id to get information for
      sig do
        params(
          budget_id: String,
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def settings(budget_id:, request_options: {})
      end

      sig { params(client: Hanzoai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
