# typed: strong

module Hanzoai
  module Models
    class HealthCheckServicesParams < Hanzoai::BaseModel
      extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # Specify the service being hit.
      sig { returns(T.any(Hanzoai::Models::HealthCheckServicesParams::Service::OrSymbol, String)) }
      attr_accessor :service

      sig do
        params(
          service: T.any(Hanzoai::Models::HealthCheckServicesParams::Service::OrSymbol, String),
          request_options: T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(service:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              service: T.any(Hanzoai::Models::HealthCheckServicesParams::Service::OrSymbol, String),
              request_options: Hanzoai::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Specify the service being hit.
      module Service
        extend Hanzoai::Union

        sig { override.returns([Hanzoai::Models::HealthCheckServicesParams::Service::OrSymbol, String]) }
        def self.variants
        end

        TaggedSymbol = T.type_alias { T.all(Symbol, Hanzoai::Models::HealthCheckServicesParams::Service) }
        OrSymbol =
          T.type_alias { T.any(Symbol, Hanzoai::Models::HealthCheckServicesParams::Service::TaggedSymbol) }

        SLACK_BUDGET_ALERTS =
          T.let(:slack_budget_alerts, Hanzoai::Models::HealthCheckServicesParams::Service::TaggedSymbol)
        LANGFUSE = T.let(:langfuse, Hanzoai::Models::HealthCheckServicesParams::Service::TaggedSymbol)
        SLACK = T.let(:slack, Hanzoai::Models::HealthCheckServicesParams::Service::TaggedSymbol)
        OPENMETER = T.let(:openmeter, Hanzoai::Models::HealthCheckServicesParams::Service::TaggedSymbol)
        WEBHOOK = T.let(:webhook, Hanzoai::Models::HealthCheckServicesParams::Service::TaggedSymbol)
        EMAIL = T.let(:email, Hanzoai::Models::HealthCheckServicesParams::Service::TaggedSymbol)
        BRAINTRUST = T.let(:braintrust, Hanzoai::Models::HealthCheckServicesParams::Service::TaggedSymbol)
        DATADOG = T.let(:datadog, Hanzoai::Models::HealthCheckServicesParams::Service::TaggedSymbol)
      end
    end
  end
end
