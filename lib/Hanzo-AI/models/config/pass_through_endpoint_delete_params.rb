# frozen_string_literal: true

module HanzoAI
  module Models
    module Config
      class PassThroughEndpointDeleteParams < HanzoAI::BaseModel
        # @!parse
        #   extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

        # @!attribute endpoint_id
        #
        #   @return [String]
        required :endpoint_id, String

        # @!parse
        #   # @param endpoint_id [String]
        #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(endpoint_id:, request_options: {}, **) = super

        # def initialize: (Hash | HanzoAI::BaseModel) -> void
      end
    end
  end
end
