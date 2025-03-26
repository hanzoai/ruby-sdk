# typed: strong

module Hanzoai
  module Resources
    class Settings
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
      sig do
        params(request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)))
          .returns(T.anything)
      end
      def retrieve(request_options: {})
      end

      sig { params(client: Hanzoai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
