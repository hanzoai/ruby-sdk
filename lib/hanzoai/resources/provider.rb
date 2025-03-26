# frozen_string_literal: true

module Hanzoai
  module Resources
    class Provider
      # Provider Budget Routing - Get Budget, Spend Details
      #   https://docs.llm.ai/docs/proxy/provider_budget_routing
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
      #
      # @param params [Hanzoai::Models::ProviderListBudgetsParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Hanzoai::Models::ProviderListBudgetsResponse]
      def list_budgets(params = {})
        @client.request(
          method: :get,
          path: "provider/budgets",
          model: Hanzoai::Models::ProviderListBudgetsResponse,
          options: params[:request_options]
        )
      end

      # @param client [Hanzoai::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
