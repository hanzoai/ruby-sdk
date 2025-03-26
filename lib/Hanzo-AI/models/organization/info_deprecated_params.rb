# frozen_string_literal: true

module HanzoAI
  module Models
    module Organization
      class InfoDeprecatedParams < HanzoAI::BaseModel
        # @!parse
        #   extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

        # @!attribute organizations
        #
        #   @return [Array<String>]
        required :organizations, HanzoAI::ArrayOf[String]

        # @!parse
        #   # @param organizations [Array<String>]
        #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(organizations:, request_options: {}, **) = super

        # def initialize: (Hash | HanzoAI::BaseModel) -> void
      end
    end
  end
end
