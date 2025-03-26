# frozen_string_literal: true

module HanzoAI
  module Resources
    class Active
      # Returns a list of llm level settings
      #
      #   This is useful for debugging and ensuring the proxy server is configured
      #   correctly.
      #
      #   Response schema:
      #
      #   ```
      #   {
      #       "alerting": _alerting,
      #       "llm.callbacks": llm_callbacks,
      #       "llm.input_callback": llm_input_callbacks,
      #       "llm.failure_callback": llm_failure_callbacks,
      #       "llm.success_callback": llm_success_callbacks,
      #       "llm._async_success_callback": llm_async_success_callbacks,
      #       "llm._async_failure_callback": llm_async_failure_callbacks,
      #       "llm._async_input_callback": llm_async_input_callbacks,
      #       "all_llm_callbacks": all_llm_callbacks,
      #       "num_callbacks": len(all_llm_callbacks),
      #       "num_alerting": _num_alerting,
      #       "llm.request_timeout": llm.request_timeout,
      #   }
      #   ```
      #
      # @param params [HanzoAI::Models::ActiveListCallbacksParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def list_callbacks(params = {})
        @client.request(
          method: :get,
          path: "active/callbacks",
          model: HanzoAI::Unknown,
          options: params[:request_options]
        )
      end

      # @param client [HanzoAI::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
