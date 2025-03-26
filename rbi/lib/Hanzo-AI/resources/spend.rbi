# typed: strong

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
      sig do
        params(
          completion_response: T.nilable(T.anything),
          messages: T.nilable(T::Array[T.anything]),
          model: T.nilable(String),
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def calculate_spend(completion_response: nil, messages: nil, model: nil, request_options: {})
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
      sig do
        params(
          api_key: T.nilable(String),
          end_date: T.nilable(String),
          request_id: T.nilable(String),
          start_date: T.nilable(String),
          user_id: T.nilable(String),
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T::Array[HanzoAI::Models::SpendListLogsResponseItem])
      end
      def list_logs(
        # Get spend logs based on api key
        api_key: nil,
        # Time till which to view key spend
        end_date: nil,
        # request_id to get spend logs for specific request_id. If none passed then pass
        #   spend logs for all requests
        request_id: nil,
        # Time from which to start viewing key spend
        start_date: nil,
        # Get spend logs based on user_id
        user_id: nil,
        request_options: {}
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
      sig do
        params(
          end_date: T.nilable(String),
          start_date: T.nilable(String),
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T::Array[HanzoAI::Models::SpendListTagsResponseItem])
      end
      def list_tags(
        # Time till which to view key spend
        end_date: nil,
        # Time from which to start viewing key spend
        start_date: nil,
        request_options: {}
      )
      end

      sig { params(client: HanzoAI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
