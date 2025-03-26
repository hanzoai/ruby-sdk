# frozen_string_literal: true

module HanzoAI
  module Models
    module Global
      class SpendListTagsParams < HanzoAI::BaseModel
        # @!parse
        #   extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

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

        # @!attribute tags
        #   comman separated tags to filter on
        #
        #   @return [String, nil]
        optional :tags, String, nil?: true

        # @!parse
        #   # @param end_date [String, nil]
        #   # @param start_date [String, nil]
        #   # @param tags [String, nil]
        #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(end_date: nil, start_date: nil, tags: nil, request_options: {}, **) = super

        # def initialize: (Hash | HanzoAI::BaseModel) -> void
      end
    end
  end
end
