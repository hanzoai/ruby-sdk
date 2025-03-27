# frozen_string_literal: true

module Hanzoai
  module Models
    module Config
      class PassThroughEndpointListParams < Hanzoai::BaseModel
        # @!parse
        #   extend Hanzoai::RequestParameters::Converter
        include Hanzoai::RequestParameters

        # @!attribute endpoint_id
        #
        #   @return [String, nil]
        optional :endpoint_id, String, nil?: true

        # @!parse
        #   # @param endpoint_id [String, nil]
        #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(endpoint_id: nil, request_options: {}, **) = super

        # def initialize: (Hash | Hanzoai::BaseModel) -> void
      end
    end
  end
end
