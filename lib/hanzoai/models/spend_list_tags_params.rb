# frozen_string_literal: true

module Hanzoai
  module Models
    class SpendListTagsParams < Hanzoai::BaseModel
      # @!parse
      #   extend Hanzoai::RequestParameters::Converter
      include Hanzoai::RequestParameters

      # @!attribute end_date
      #   Time till which to view key spend
      #
      #   @return [String, nil]
      optional :end_date, String, nil?: true

      # @!attribute start_date
      #   Time from which to start viewing key spend
      #
      #   @return [String, nil]
      optional :start_date, String, nil?: true

      # @!parse
      #   # @param end_date [String, nil]
      #   # @param start_date [String, nil]
      #   # @param request_options [Hanzoai::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(end_date: nil, start_date: nil, request_options: {}, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
