# frozen_string_literal: true

module HanzoAI
  module Models
    class SpendListLogsParams < HanzoAI::BaseModel
      # @!parse
      #   extend HanzoAI::RequestParameters::Converter
      include HanzoAI::RequestParameters

      # @!attribute api_key
      #   Get spend logs based on api key
      #
      #   @return [String, nil]
      optional :api_key, String, nil?: true

      # @!attribute end_date
      #   Time till which to view key spend
      #
      #   @return [String, nil]
      optional :end_date, String, nil?: true

      # @!attribute request_id
      #   request_id to get spend logs for specific request_id. If none passed then pass
      #     spend logs for all requests
      #
      #   @return [String, nil]
      optional :request_id, String, nil?: true

      # @!attribute start_date
      #   Time from which to start viewing key spend
      #
      #   @return [String, nil]
      optional :start_date, String, nil?: true

      # @!attribute user_id
      #   Get spend logs based on user_id
      #
      #   @return [String, nil]
      optional :user_id, String, nil?: true

      # @!parse
      #   # @param api_key [String, nil]
      #   # @param end_date [String, nil]
      #   # @param request_id [String, nil]
      #   # @param start_date [String, nil]
      #   # @param user_id [String, nil]
      #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(api_key: nil, end_date: nil, request_id: nil, start_date: nil, user_id: nil, request_options: {}, **) = super

      # def initialize: (Hash | HanzoAI::BaseModel) -> void
    end
  end
end
