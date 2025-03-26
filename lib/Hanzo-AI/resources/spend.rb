# frozen_string_literal: true

module HanzoAI
  module Resources
    class Spend
      # Accepts all the params of completion_cost.
      #
      #   Calculate spend **before** making call:
      #
      #   Note: If you see a spend of $0.0 you need to set custom_pricing for your model:
      #   https://docs.llm.ai/docs/proxy/custom_pricing
      #
      #   ```
      #   curl --location 'http://localhost:4000/spend/calculate'
      #   --header 'Authorization: Bearer sk-1234'
      #   --header 'Content-Type: application/json'
      #   --data '{
      #       "model": "anthropic.claude-v2",
      #       "messages": [{"role": "user", "content": "Hey, how'''s it going?"}]
      #   }'
      #   ```
      #
      #   Calculate spend **after** making call:
      #
      #   ```
      #   curl --location 'http://localhost:4000/spend/calculate'
      #   --header 'Authorization: Bearer sk-1234'
      #   --header 'Content-Type: application/json'
      #   --data '{
      #       "completion_response": {
      #           "id": "chatcmpl-123",
      #           "object": "chat.completion",
      #           "created": 1677652288,
      #           "model": "gpt-3.5-turbo-0125",
      #           "system_fingerprint": "fp_44709d6fcb",
      #           "choices": [{
      #               "index": 0,
      #               "message": {
      #                   "role": "assistant",
      #                   "content": "Hello there, how may I assist you today?"
      #               },
      #               "logprobs": null,
      #               "finish_reason": "stop"
      #           }]
      #           "usage": {
      #               "prompt_tokens": 9,
      #               "completion_tokens": 12,
      #               "total_tokens": 21
      #           }
      #       }
      #   }'
      #   ```
      #
      # @param params [HanzoAI::Models::SpendCalculateSpendParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Object, nil] :completion_response
      #
      #   @option params [Array<Object>, nil] :messages
      #
      #   @option params [String, nil] :model
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def calculate_spend(params = {})
        parsed, options = HanzoAI::Models::SpendCalculateSpendParams.dump_request(params)
        @client.request(
          method: :post,
          path: "spend/calculate",
          body: parsed,
          model: HanzoAI::Unknown,
          options: options
        )
      end

      # View all spend logs, if request_id is provided, only logs for that request_id
      #   will be returned
      #
      #   Example Request for all logs
      #
      #   ```
      #   curl -X GET "http://0.0.0.0:8000/spend/logs" -H "Authorization: Bearer sk-1234"
      #   ```
      #
      #   Example Request for specific request_id
      #
      #   ```
      #   curl -X GET "http://0.0.0.0:8000/spend/logs?request_id=chatcmpl-6dcb2540-d3d7-4e49-bb27-291f863f112e" -H "Authorization: Bearer sk-1234"
      #   ```
      #
      #   Example Request for specific api_key
      #
      #   ```
      #   curl -X GET "http://0.0.0.0:8000/spend/logs?api_key=sk-Fn8Ej39NkBQmUagFEoUWPQ" -H "Authorization: Bearer sk-1234"
      #   ```
      #
      #   Example Request for specific user_id
      #
      #   ```
      #   curl -X GET "http://0.0.0.0:8000/spend/logs?user_id=z@hanzo.ai" -H "Authorization: Bearer sk-1234"
      #   ```
      #
      # @param params [HanzoAI::Models::SpendListLogsParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :api_key Get spend logs based on api key
      #
      #   @option params [String, nil] :end_date Time till which to view key spend
      #
      #   @option params [String, nil] :request_id request_id to get spend logs for specific request_id. If none passed then pass
      #     spend logs for all requests
      #
      #   @option params [String, nil] :start_date Time from which to start viewing key spend
      #
      #   @option params [String, nil] :user_id Get spend logs based on user_id
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Array<HanzoAI::Models::SpendListLogsResponseItem>]
      def list_logs(params = {})
        parsed, options = HanzoAI::Models::SpendListLogsParams.dump_request(params)
        @client.request(
          method: :get,
          path: "spend/logs",
          query: parsed,
          model: HanzoAI::ArrayOf[HanzoAI::Models::SpendListLogsResponseItem],
          options: options
        )
      end

      # LLM Enterprise - View Spend Per Request Tag
      #
      #   Example Request:
      #
      #   ```
      #   curl -X GET "http://0.0.0.0:8000/spend/tags" -H "Authorization: Bearer sk-1234"
      #   ```
      #
      #   Spend with Start Date and End Date
      #
      #   ```
      #   curl -X GET "http://0.0.0.0:8000/spend/tags?start_date=2022-01-01&end_date=2022-02-01" -H "Authorization: Bearer sk-1234"
      #   ```
      #
      # @param params [HanzoAI::Models::SpendListTagsParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :end_date Time till which to view key spend
      #
      #   @option params [String, nil] :start_date Time from which to start viewing key spend
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Array<HanzoAI::Models::SpendListTagsResponseItem>]
      def list_tags(params = {})
        parsed, options = HanzoAI::Models::SpendListTagsParams.dump_request(params)
        @client.request(
          method: :get,
          path: "spend/tags",
          query: parsed,
          model: HanzoAI::ArrayOf[HanzoAI::Models::SpendListTagsResponseItem],
          options: options
        )
      end

      # @param client [HanzoAI::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
