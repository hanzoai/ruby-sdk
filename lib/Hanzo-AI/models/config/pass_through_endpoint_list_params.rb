# frozen_string_literal: true

module HanzoAI
  module Models
    module Config
      class PassThroughEndpointListParams < HanzoAI::BaseModel
        # @!parse
        #   extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

        # @!attribute endpoint_id
        #
        #   @return [String, nil]
        optional :endpoint_id, String, nil?: true

        # @!parse
        #   # @param endpoint_id [String, nil]
        #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(endpoint_id: nil, request_options: {}, **) = super

        # def initialize: (Hash | HanzoAI::BaseModel) -> void
      end
    end
  end
end
