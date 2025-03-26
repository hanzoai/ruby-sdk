# frozen_string_literal: true

module HanzoAI
  module Models
    module Organization
      class InfoRetrieveParams < HanzoAI::BaseModel
        # @!parse
        #   extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

        # @!attribute organization_id
        #
        #   @return [String]
        required :organization_id, String

        # @!parse
        #   # @param organization_id [String]
        #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(organization_id:, request_options: {}, **) = super

        # def initialize: (Hash | HanzoAI::BaseModel) -> void
      end
    end
  end
end
