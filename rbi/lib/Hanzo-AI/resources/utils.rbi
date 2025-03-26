# typed: strong

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
      sig do
        params(
          model: String,
          request_options: T.nilable(
            T.any(
              HanzoAI::RequestOptions,
              HanzoAI::Util::AnyHash
            )
          )
        )
          .returns(T.anything)
      end
      def get_supported_openai_params(model:, request_options: {})
      end

      # Token Counter
      sig do
        params(
          model: String,
          messages: T.nilable(T::Array[T.anything]),
          prompt: T.nilable(String),
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(HanzoAI::Models::UtilTokenCounterResponse)
      end
      def token_counter(model:, messages: nil, prompt: nil, request_options: {})
      end

      # Transform Request
      sig do
        params(
          call_type: HanzoAI::Models::UtilTransformRequestParams::CallType::OrSymbol,
          request_body: T.anything,
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(HanzoAI::Models::UtilTransformRequestResponse)
      end
      def transform_request(call_type:, request_body:, request_options: {})
      end

      sig { params(client: HanzoAI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
