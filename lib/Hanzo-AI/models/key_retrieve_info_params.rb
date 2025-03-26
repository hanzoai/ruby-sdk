# frozen_string_literal: true

module HanzoAI
  module Models
    class KeyRetrieveInfoParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute key
      #   Key in the request parameters
      #
      #   @return [String, nil]
      optional :key, String, nil?: true

      # @!parse
      #   # @param key [String, nil]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(key: nil, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
