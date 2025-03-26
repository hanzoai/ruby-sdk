# frozen_string_literal: true

module HanzoAI
  module Models
    class BatchListWithProviderParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute after
      #
      #   @return [String, nil]
      optional :after, String, nil?: true

      # @!attribute limit
      #
      #   @return [Integer, nil]
      optional :limit, Integer, nil?: true

      # @!parse
      #   # @param after [String, nil]
      #   # @param limit [Integer, nil]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(after: nil, limit: nil, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
