# frozen_string_literal: true

module Hanzoai
  module Models
    class BatchRetrieveWithProviderParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # @!attribute provider
      #
      #   @return [String]
      required :provider, String

      # @!parse
      #   # @param provider [String]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(provider:, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
