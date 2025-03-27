# frozen_string_literal: true

module Hanzoai
  module Models
    module Organization
      class InfoRetrieveParams < Hanzoai::BaseModel
        # @!parse
        #   extend Hanzoai::RequestParameters::Converter
        include Hanzoai::RequestParameters

        # @!attribute organization_id
        #
        #   @return [String]
        required :organization_id, String

        # @!parse
        #   # @param organization_id [String]
        #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(organization_id:, request_options: {}, **) = super

        # def initialize: (Hash | Hanzoai::BaseModel) -> void
      end
    end
  end
end
