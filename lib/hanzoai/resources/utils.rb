# frozen_string_literal: true

module Hanzoai
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
      # @param params [Hanzoai::Models::UtilGetSupportedOpenAIParamsParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :model
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def get_supported_openai_params(params)
        parsed, options = Hanzoai::Models::UtilGetSupportedOpenAIParamsParams.dump_request(params)
        @client.request(
          method: :get,
          path: "utils/supported_openai_params",
          query: parsed,
          model: Hanzoai::Unknown,
          options: options
        )
      end

      # Token Counter
      #
      # @param params [Hanzoai::Models::UtilTokenCounterParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :model
      #
      #   @option params [Array<Object>, nil] :messages
      #
      #   @option params [String, nil] :prompt
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Hanzoai::Models::UtilTokenCounterResponse]
      def token_counter(params)
        parsed, options = Hanzoai::Models::UtilTokenCounterParams.dump_request(params)
        @client.request(
          method: :post,
          path: "utils/token_counter",
          body: parsed,
          model: Hanzoai::Models::UtilTokenCounterResponse,
          options: options
        )
      end

      # Transform Request
      #
      # @param params [Hanzoai::Models::UtilTransformRequestParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Symbol, Hanzoai::Models::UtilTransformRequestParams::CallType] :call_type
      #
      #   @option params [Object] :request_body
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Hanzoai::Models::UtilTransformRequestResponse]
      def transform_request(params)
        parsed, options = Hanzoai::Models::UtilTransformRequestParams.dump_request(params)
        @client.request(
          method: :post,
          path: "utils/transform_request",
          body: parsed,
          model: Hanzoai::Models::UtilTransformRequestResponse,
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
