# typed: strong

module Hanzoai
  module Resources
    class Provider
      # Provider Budget Routing - Get Budget, Spend Details
      #   https://docs.hanzo.ai/docs/proxy/provider_budget_routing
      #
      #   Use this endpoint to check current budget, spend and budget reset time for a
      #   provider
      #
      #   Example Request
      #
      #   ```bash
      #   curl -X GET http://localhost:4000/provider/budgets     -H "Content-Type: application/json"     -H "Authorization: Bearer sk-1234"
      #   ```
      #
      #   Example Response
      #
      #   ```json
      #   {
      #     "providers": {
      #       "openai": {
      #         "budget_limit": 1e-12,
      #         "time_period": "1d",
      #         "spend": 0.0,
      #         "budget_reset_at": null
      #       },
      #       "azure": {
      #         "budget_limit": 100.0,
      #         "time_period": "1d",
      #         "spend": 0.0,
      #         "budget_reset_at": null
      #       },
      #       "anthropic": {
      #         "budget_limit": 100.0,
      #         "time_period": "10d",
      #         "spend": 0.0,
      #         "budget_reset_at": null
      #       },
      #       "vertex_ai": {
      #         "budget_limit": 100.0,
      #         "time_period": "12d",
      #         "spend": 0.0,
      #         "budget_reset_at": null
      #       }
      #     }
      #   }
      #   ```
      sig do
        params(request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)))
          .returns(Hanzoai::Models::ProviderListBudgetsResponse)
      end
      def list_budgets(request_options: {})
      end

      sig { params(client: Hanzoai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
