# frozen_string_literal: true

module HanzoAI
  module Models
    module Batches
      class CancelCancelParams < HanzoAI::BaseModel
        # @!parse
        #   extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

        # @!attribute provider
        #
        #   @return [String, nil]
        optional :provider, String, nil?: true

        # @!parse
        #   # @param provider [String, nil]
        #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(provider: nil, request_options: {}, **) = super

        # def initialize: (Hash | HanzoAI::BaseModel) -> void
      end
    end
  end
end
