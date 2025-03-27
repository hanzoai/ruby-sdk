# frozen_string_literal: true

module Hanzoai
  module Models
    class BatchListWithProviderParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

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
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(after: nil, limit: nil, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
