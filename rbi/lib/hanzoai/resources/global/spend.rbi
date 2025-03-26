# typed: strong

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
        sig do
          params(
            end_date: T.nilable(String),
            start_date: T.nilable(String),
            tags: T.nilable(String),
            request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
          )
            .returns(T::Array[Hanzoai::Models::Global::SpendListTagsResponseItem])
        end
        def list_tags(
          # Time till which to view key spend
          end_date: nil,
          # Time from which to start viewing key spend
          start_date: nil,
          # comman separated tags to filter on
          tags: nil,
          request_options: {}
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
        sig do
          params(request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)))
            .returns(T.anything)
        end
        def reset(request_options: {})
        end

        # Get Daily Spend per Team, based on specific startTime and endTime. Per team,
        #   view usage by each key, model [ { "group-by-day": "2024-05-10", "teams": [ {
        #   "team_name": "team-1" "spend": 10, "keys": [ "key": "1213", "usage": {
        #   "model-1": { "cost": 12.50, "input_tokens": 1000, "output_tokens": 5000,
        #   "requests": 100 }, "audio-modelname1": { "cost": 25.50, "seconds": 25,
        #   "requests": 50 }, } } ] ] }
        sig do
          params(
            api_key: T.nilable(String),
            customer_id: T.nilable(String),
            end_date: T.nilable(String),
            group_by: T.nilable(Hanzoai::Models::Global::SpendRetrieveReportParams::GroupBy::OrSymbol),
            internal_user_id: T.nilable(String),
            start_date: T.nilable(String),
            team_id: T.nilable(String),
            request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
          )
            .returns(T::Array[Hanzoai::Models::Global::SpendRetrieveReportResponseItem])
        end
        def retrieve_report(
          # View spend for a specific api_key. Example api_key='sk-1234
          api_key: nil,
          # View spend for a specific customer_id. Example customer_id='1234. Can be used in
          #   conjunction with team_id as well.
          customer_id: nil,
          # Time till which to view spend
          end_date: nil,
          # Group spend by internal team or customer or api_key
          group_by: nil,
          # View spend for a specific internal_user_id. Example internal_user_id='1234
          internal_user_id: nil,
          # Time from which to start viewing spend
          start_date: nil,
          # View spend for a specific team_id. Example team_id='1234
          team_id: nil,
          request_options: {}
        )
        end

        sig { params(client: Hanzoai::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
