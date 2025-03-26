# frozen_string_literal: true

module HanzoAI
  module Models
    module Config
      class PassThroughEndpointResponse < HanzoAI::BaseModel
        # @!attribute endpoints
        #
        #   @return [Array<HanzoAI::Models::Config::PassThroughGenericEndpoint>]
        required :endpoints, -> { HanzoAI::ArrayOf[HanzoAI::Models::Config::PassThroughGenericEndpoint] }

        # @!parse
        #   # @param endpoints [Array<HanzoAI::Models::Config::PassThroughGenericEndpoint>]
        #   #
        #   def initialize(endpoints:, **) = super

        # def initialize: (Hash | HanzoAI::BaseModel) -> void
      end
    end
  end
end
