# frozen_string_literal: true

module Hanzoai
  module Models
    class HealthCheckServicesParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # @!attribute service
      #   Specify the service being hit.
      #
      #   @return [Symbol, String]
      required :service, union: -> { Hanzoai::Models::HealthCheckServicesParams::Service }

      # @!parse
      #   # @param service [Symbol, String]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(service:, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void

      # Specify the service being hit.
      module Service
        extend Hanzoai::Union

        variant const: -> { Hanzoai::Models::HealthCheckServicesParams::Service::SLACK_BUDGET_ALERTS }

        variant const: -> { Hanzoai::Models::HealthCheckServicesParams::Service::LANGFUSE }

        variant const: -> { Hanzoai::Models::HealthCheckServicesParams::Service::SLACK }

        variant const: -> { Hanzoai::Models::HealthCheckServicesParams::Service::OPENMETER }

        variant const: -> { Hanzoai::Models::HealthCheckServicesParams::Service::WEBHOOK }

        variant const: -> { Hanzoai::Models::HealthCheckServicesParams::Service::EMAIL }

        variant const: -> { Hanzoai::Models::HealthCheckServicesParams::Service::BRAINTRUST }

        variant const: -> { Hanzoai::Models::HealthCheckServicesParams::Service::DATADOG }

        variant String

        # @!parse
        #   # @return [Array(Symbol, String)]
        #   def self.variants; end

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
      end
    end
  end
end
