# frozen_string_literal: true

module Hanzoai
  module Models
    class KeyRetrieveInfoParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # @!attribute key
      #   Key in the request parameters
      #
      #   @return [String, nil]
      optional :key, String, nil?: true

      # @!parse
      #   # @param key [String, nil]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(key: nil, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
