# frozen_string_literal: true

module Hanzoai
  module Models
    module Config
      class PassThroughEndpointCreateParams < Hanzoai::Models::Config::PassThroughGenericEndpoint
        # @!parse
        #   extend Hanzoai::RequestParameters::Converter
        include Hanzoai::RequestParameters

        # @!parse
        #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(request_options: {}, **) = super

        # def initialize: (Hash | Hanzoai::BaseModel) -> void
      end
    end
  end
end
