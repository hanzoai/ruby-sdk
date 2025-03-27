# frozen_string_literal: true

module Hanzoai
  module Resources
    class Health
      # 🚨 USE `/health/liveliness` to health check the proxy 🚨
      #
      #   See more 👉 https://docs.hanzo.ai/docs/proxy/health
      #
      #   Check the health of all the endpoints in config.yaml
      #
      #   To run health checks in the background, add this to config.yaml:
      #
      #   ```
      #   general_settings:
      #       # ... other settings
      #       background_health_checks: True
      #   ```
      #
      #   else, the health checks will be run on models when /health is called.
      #
      # @param params [Hanzoai::Models::HealthCheckAllParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :model Specify the model name (optional)
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def check_all(params = {})
        parsed, options = Hanzoai::Models::HealthCheckAllParams.dump_request(params)
        @client.request(
          method: :get,
          path: "health",
          query: parsed,
          model: Hanzoai::Unknown,
          options: options
        )
      end

      # Unprotected endpoint for checking if worker is alive
      #
      # @param params [Hanzoai::Models::HealthCheckLivelinessParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def check_liveliness(params = {})
        @client.request(
          method: :get,
          path: "health/liveliness",
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Unprotected endpoint for checking if worker is alive
      #
      # @param params [Hanzoai::Models::HealthCheckLivenessParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def check_liveness(params = {})
        @client.request(
          method: :get,
          path: "health/liveness",
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Unprotected endpoint for checking if worker can receive requests
      #
      # @param params [Hanzoai::Models::HealthCheckReadinessParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def check_readiness(params = {})
        @client.request(
          method: :get,
          path: "health/readiness",
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Use this admin-only endpoint to check if the service is healthy.
      #
      #   Example:
      #
      #   ```
      #   curl -L -X GET 'http://0.0.0.0:4000/health/services?service=datadog'     -H 'Authorization: Bearer sk-1234'
      #   ```
      #
      # @param params [Hanzoai::Models::HealthCheckServicesParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, String] :service Specify the service being hit.
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def check_services(params)
        parsed, options = Hanzoai::Models::HealthCheckServicesParams.dump_request(params)
        @client.request(
          method: :get,
          path: "health/services",
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
