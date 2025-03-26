# frozen_string_literal: true

module HanzoAI
  module Models
    module Files
      class ContentRetrieveParams < HanzoAI::BaseModel
        # @!parse
        #   extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

        # @!attribute provider
        #
        #   @return [String]
        required :provider, String

        # @!parse
        #   # @param provider [String]
        #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(provider:, request_options: {}, **) = super

        # def initialize: (Hash | HanzoAI::BaseModel) -> void
      end
    end
  end
end
