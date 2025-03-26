# frozen_string_literal: true

module Hanzoai
  module Resources
    class Global
      class Spend
        # LLM Enterprise - View Spend Per Request Tag. Used by LLM UI
        #
        #   Example Request:
        #
        #   ```
        #   curl -X GET "http://0.0.0.0:4000/spend/tags" -H "Authorization: Bearer sk-1234"
        #   ```
        #
        #   Spend with Start Date and End Date
        #
        #   ```
        #   curl -X GET "http://0.0.0.0:4000/spend/tags?start_date=2022-01-01&end_date=2022-02-01" -H "Authorization: Bearer sk-1234"
        #   ```
        #
        # @param params [Hanzoai::Models::Global::SpendListTagsParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String, nil] :end_date Time till which to view key spend
        #
        #   @option params [String, nil] :start_date Time from which to start viewing key spend
        #
        #   @option params [String, nil] :tags comman separated tags to filter on
        #
        #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Array<Hanzoai::Models::Global::SpendListTagsResponseItem>]
        def list_tags(params = {})
          parsed, options = Hanzoai::Models::Global::SpendListTagsParams.dump_request(params)
          @client.request(
            method: :get,
            path: "global/spend/tags",
            query: parsed,
            model: Hanzoai::ArrayOf[Hanzoai::Models::Global::SpendListTagsResponseItem],
            options: options
          )
        end

        # ADMIN ONLY / MASTER KEY Only Endpoint
        #
        #   Globally reset spend for All API Keys and Teams, maintain LLM_SpendLogs
        #
        #   1. LLM_SpendLogs will maintain the logs on spend, no data gets deleted from
        #      there
        #   2. LLM_VerificationTokens spend will be set = 0
        #   3. LLM_TeamTable spend will be set = 0
        #
        # @param params [Hanzoai::Models::Global::SpendResetParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def reset(params = {})
          @client.request(
            method: :post,
            path: "global/spend/reset",
            model: Hanzoai::Unknown,
            options: params[:request_options]
          )
        end

        # Get Daily Spend per Team, based on specific startTime and endTime. Per team,
        #   view usage by each key, model [ { "group-by-day": "2024-05-10", "teams": [ {
        #   "team_name": "team-1" "spend": 10, "keys": [ "key": "1213", "usage": {
        #   "model-1": { "cost": 12.50, "input_tokens": 1000, "output_tokens": 5000,
        #   "requests": 100 }, "audio-modelname1": { "cost": 25.50, "seconds": 25,
        #   "requests": 50 }, } } ] ] }
        #
        # @param params [Hanzoai::Models::Global::SpendRetrieveReportParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String, nil] :api_key View spend for a specific api_key. Example api_key='sk-1234
        #
        #   @option params [String, nil] :customer_id View spend for a specific customer_id. Example customer_id='1234. Can be used in
        #     conjunction with team_id as well.
        #
        #   @option params [String, nil] :end_date Time till which to view spend
        #
        #   @option params [Symbol, Hanzoai::Models::Global::SpendRetrieveReportParams::GroupBy, nil] :group_by Group spend by internal team or customer or api_key
        #
        #   @option params [String, nil] :internal_user_id View spend for a specific internal_user_id. Example internal_user_id='1234
        #
        #   @option params [String, nil] :start_date Time from which to start viewing spend
        #
        #   @option params [String, nil] :team_id View spend for a specific team_id. Example team_id='1234
        #
        #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Array<Hanzoai::Models::Global::SpendRetrieveReportResponseItem>]
        def retrieve_report(params = {})
          parsed, options = Hanzoai::Models::Global::SpendRetrieveReportParams.dump_request(params)
          @client.request(
            method: :get,
            path: "global/spend/report",
            query: parsed,
            model: Hanzoai::ArrayOf[Hanzoai::Models::Global::SpendRetrieveReportResponseItem],
            options: options
          )
        end

        # @param client [Hanzoai::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
