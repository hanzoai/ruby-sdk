# typed: strong

module HanzoAI
  module Models
    class HealthCheckServicesParams < HanzoAI::BaseModel
      extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # Specify the service being hit.
      sig { returns(T.any(HanzoAI::Models::HealthCheckServicesParams::Service::OrSymbol, String)) }
      attr_accessor :service

      sig do
        params(
          service: T.any(HanzoAI::Models::HealthCheckServicesParams::Service::OrSymbol, String),
          request_options: T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(service:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              service: T.any(HanzoAI::Models::HealthCheckServicesParams::Service::OrSymbol, String),
              request_options: HanzoAI::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Specify the service being hit.
      module Service
        extend HanzoAI::Union

        TaggedSymbol = T.type_alias { T.all(Symbol, HanzoAI::Models::HealthCheckServicesParams::Service) }
        OrSymbol =
          T.type_alias { T.any(Symbol, HanzoAI::Models::HealthCheckServicesParams::Service::TaggedSymbol) }

        SLACK_BUDGET_ALERTS =
          T.let(:slack_budget_alerts, HanzoAI::Models::HealthCheckServicesParams::Service::TaggedSymbol)
        LANGFUSE = T.let(:langfuse, HanzoAI::Models::HealthCheckServicesParams::Service::TaggedSymbol)
        SLACK = T.let(:slack, HanzoAI::Models::HealthCheckServicesParams::Service::TaggedSymbol)
        OPENMETER = T.let(:openmeter, HanzoAI::Models::HealthCheckServicesParams::Service::TaggedSymbol)
        WEBHOOK = T.let(:webhook, HanzoAI::Models::HealthCheckServicesParams::Service::TaggedSymbol)
        EMAIL = T.let(:email, HanzoAI::Models::HealthCheckServicesParams::Service::TaggedSymbol)
        BRAINTRUST = T.let(:braintrust, HanzoAI::Models::HealthCheckServicesParams::Service::TaggedSymbol)
        DATADOG = T.let(:datadog, HanzoAI::Models::HealthCheckServicesParams::Service::TaggedSymbol)

        sig { override.returns([HanzoAI::Models::HealthCheckServicesParams::Service::OrSymbol, String]) }
        def self.variants
        end
      end
    end
  end
end
