# frozen_string_literal: true

module Hanzoai
  module Models
    module Config
      class PassThroughEndpointResponse < Hanzoai::BaseModel
        # @!attribute endpoints
        #
        #   @return [Array<Hanzoai::Models::Config::PassThroughGenericEndpoint>]
        required :endpoints, -> { Hanzoai::ArrayOf[Hanzoai::Models::Config::PassThroughGenericEndpoint] }

        # @!parse
        #   # @param endpoints [Array<Hanzoai::Models::Config::PassThroughGenericEndpoint>]
        #   #
        #   def initialize(endpoints:, **) = super

        # def initialize: (Hash | Hanzoai::BaseModel) -> void
      end
    end
  end
end
