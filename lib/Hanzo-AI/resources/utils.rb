# frozen_string_literal: true

module HanzoAI
  module Resources
    class Utils
      # Returns supported openai params for a given llm model name
      #
      #   e.g. `gpt-4` vs `gpt-3.5-turbo`
      #
      #   Example curl:
      #
      #   ```
      #   curl -X GET --location 'http://localhost:4000/utils/supported_openai_params?model=gpt-3.5-turbo-16k'         --header 'Authorization: Bearer sk-1234'
      #   ```
      #
      # @param params [HanzoAI::Models::UtilGetSupportedOpenAIParamsParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :model
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def get_supported_openai_params(params)
        parsed, options = HanzoAI::Models::UtilGetSupportedOpenAIParamsParams.dump_request(params)
        @client.request(
          method: :get,
          path: "utils/supported_openai_params",
          query: parsed,
          model: HanzoAI::Unknown,
          options: options
        )
      end

      # Token Counter
      #
      # @param params [HanzoAI::Models::UtilTokenCounterParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :model
      #
      #   @option params [Array<Object>, nil] :messages
      #
      #   @option params [String, nil] :prompt
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [HanzoAI::Models::UtilTokenCounterResponse]
      def token_counter(params)
        parsed, options = HanzoAI::Models::UtilTokenCounterParams.dump_request(params)
        @client.request(
          method: :post,
          path: "utils/token_counter",
          body: parsed,
          model: HanzoAI::Models::UtilTokenCounterResponse,
          options: options
        )
      end

      # Transform Request
      #
      # @param params [HanzoAI::Models::UtilTransformRequestParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, HanzoAI::Models::UtilTransformRequestParams::CallType] :call_type
      #
      #   @option params [Object] :request_body
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [HanzoAI::Models::UtilTransformRequestResponse]
      def transform_request(params)
        parsed, options = HanzoAI::Models::UtilTransformRequestParams.dump_request(params)
        @client.request(
          method: :post,
          path: "utils/transform_request",
          body: parsed,
          model: HanzoAI::Models::UtilTransformRequestResponse,
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
