# typed: strong

module HanzoAI
  module Resources
    class Health
      # 🚨 USE `/health/liveliness` to health check the proxy 🚨
      #
      #   See more 👉 https://docs.llm.ai/docs/proxy/health
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
      sig do
        params(
          model: T.nilable(String),
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def check_all(
        # Specify the model name (optional)
        model: nil,
        request_options: {}
      )
      end

      # Unprotected endpoint for checking if worker is alive
      sig do
        params(request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)))
          .returns(T.anything)
      end
      def check_liveliness(request_options: {})
      end

      # Unprotected endpoint for checking if worker is alive
      sig do
        params(request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)))
          .returns(T.anything)
      end
      def check_liveness(request_options: {})
      end

      # Unprotected endpoint for checking if worker can receive requests
      sig do
        params(request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)))
          .returns(T.anything)
      end
      def check_readiness(request_options: {})
      end

      # Use this admin-only endpoint to check if the service is healthy.
      #
      #   Example:
      #
      #   ```
      #   curl -L -X GET 'http://0.0.0.0:4000/health/services?service=datadog'     -H 'Authorization: Bearer sk-1234'
      #   ```
      sig do
        params(
          service: T.any(HanzoAI::Models::HealthCheckServicesParams::Service::OrSymbol, String),
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def check_services(
        # Specify the service being hit.
        service:,
        request_options: {}
      )
      end

      sig { params(client: HanzoAI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
