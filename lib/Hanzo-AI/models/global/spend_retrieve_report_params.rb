# frozen_string_literal: true

module HanzoAI
  module Models
    module Global
      class SpendRetrieveReportParams < HanzoAI::BaseModel
        # @!parse
        #   extend HanzoAI::RequestParameters::Converter
        include HanzoAI::RequestParameters

        # @!attribute api_key
        #   View spend for a specific api_key. Example api_key='sk-1234
        #
        #   @return [String, nil]
        optional :api_key, String, nil?: true

        # @!attribute customer_id
        #   View spend for a specific customer_id. Example customer_id='1234. Can be used in
        #     conjunction with team_id as well.
        #
        #   @return [String, nil]
        optional :customer_id, String, nil?: true

        # @!attribute end_date
        #   Time till which to view spend
        #
        #   @return [String, nil]
        optional :end_date, String, nil?: true

        # @!attribute group_by
        #   Group spend by internal team or customer or api_key
        #
        #   @return [Symbol, HanzoAI::Models::Global::SpendRetrieveReportParams::GroupBy, nil]
        optional :group_by, enum: -> { HanzoAI::Models::Global::SpendRetrieveReportParams::GroupBy }, nil?: true

        # @!attribute internal_user_id
        #   View spend for a specific internal_user_id. Example internal_user_id='1234
        #
        #   @return [String, nil]
        optional :internal_user_id, String, nil?: true

        # @!attribute start_date
        #   Time from which to start viewing spend
        #
        #   @return [String, nil]
        optional :start_date, String, nil?: true

        # @!attribute team_id
        #   View spend for a specific team_id. Example team_id='1234
        #
        #   @return [String, nil]
        optional :team_id, String, nil?: true

        # @!parse
        #   # @param api_key [String, nil]
        #   # @param customer_id [String, nil]
        #   # @param end_date [String, nil]
        #   # @param group_by [Symbol, HanzoAI::Models::Global::SpendRetrieveReportParams::GroupBy, nil]
        #   # @param internal_user_id [String, nil]
        #   # @param start_date [String, nil]
        #   # @param team_id [String, nil]
        #   # @param request_options [HanzoAI::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     api_key: nil,
        #     customer_id: nil,
        #     end_date: nil,
        #     group_by: nil,
        #     internal_user_id: nil,
        #     start_date: nil,
        #     team_id: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | HanzoAI::BaseModel) -> void

        # Group spend by internal team or customer or api_key
        module GroupBy
          extend HanzoAI::Enum

          TEAM = :team
          CUSTOMER = :customer
          API_KEY = :api_key

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
