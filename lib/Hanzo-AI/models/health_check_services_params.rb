# frozen_string_literal: true

module HanzoAI
  module Models
    class HealthCheckServicesParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute service
      #   Specify the service being hit.
      #
      #   @return [Symbol, String]
      required :service, union: -> { HanzoAI::Models::HealthCheckServicesParams::Service }

      # @!parse
      #   # @param service [Symbol, String]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(service:, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void

      # Specify the service being hit.
      module Service
        extend HanzoAI::Union

        # @!group

        SLACK_BUDGET_ALERTS = :slack_budget_alerts
        LANGFUSE = :langfuse
        SLACK = :slack
        OPENMETER = :openmeter
        WEBHOOK = :webhook
        EMAIL = :email
        BRAINTRUST = :braintrust
        DATADOG = :datadog

        # @!endgroup

        variant const: HanzoAI::Models::HealthCheckServicesParams::Service::SLACK_BUDGET_ALERTS

        variant const: HanzoAI::Models::HealthCheckServicesParams::Service::LANGFUSE

        variant const: HanzoAI::Models::HealthCheckServicesParams::Service::SLACK

        variant const: HanzoAI::Models::HealthCheckServicesParams::Service::OPENMETER

        variant const: HanzoAI::Models::HealthCheckServicesParams::Service::WEBHOOK

        variant const: HanzoAI::Models::HealthCheckServicesParams::Service::EMAIL

        variant const: HanzoAI::Models::HealthCheckServicesParams::Service::BRAINTRUST

        variant const: HanzoAI::Models::HealthCheckServicesParams::Service::DATADOG

        variant String

        # @!parse
        #   # @return [Array(Symbol, String)]
        #   def self.variants; end
      end
    end
  end
end
