# frozen_string_literal: true

module Hanzoai
  module Models
    module Config
      class PassThroughEndpointDeleteParams < Hanzoai::BaseModel
        # @!parse
        #   extend Hanzoai::RequestParameters::Converter
        include Hanzoai::RequestParameters

        # @!attribute endpoint_id
        #
        #   @return [String]
        required :endpoint_id, String

        # @!parse
        #   # @param endpoint_id [String]
        #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(endpoint_id:, request_options: {}, **) = super

        # def initialize: (Hash | Hanzoai::BaseModel) -> void
      end
    end
  end
end
