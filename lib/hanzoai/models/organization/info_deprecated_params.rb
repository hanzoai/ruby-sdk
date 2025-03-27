# frozen_string_literal: true

module Hanzoai
  module Models
    module Organization
      class InfoDeprecatedParams < Hanzoai::BaseModel
        # @!parse
        #   extend Hanzoai::RequestParameters::Converter
        include Hanzoai::RequestParameters

        # @!attribute organizations
        #
        #   @return [Array<String>]
        required :organizations, Hanzoai::ArrayOf[String]

        # @!parse
        #   # @param organizations [Array<String>]
        #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(organizations:, request_options: {}, **) = super

        # def initialize: (Hash | Hanzoai::BaseModel) -> void
      end
    end
  end
end
