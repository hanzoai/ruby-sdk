# frozen_string_literal: true

module Hanzoai
  module Models
    class BatchRetrieveParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # @!attribute provider
      #
      #   @return [String, nil]
      optional :provider, String, nil?: true

      # @!parse
      #   # @param provider [String, nil]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(provider: nil, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
