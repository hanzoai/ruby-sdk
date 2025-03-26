# typed: strong

module HanzoAI
  module Resources
    class Gemini
      # [Docs](https://docs.llm.ai/docs/pass_through/google_ai_studio)
      sig do
        params(
          endpoint: String,
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def create(endpoint, request_options: {})
      end

      # [Docs](https://docs.llm.ai/docs/pass_through/google_ai_studio)
      sig do
        params(
          endpoint: String,
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def retrieve(endpoint, request_options: {})
      end

      # [Docs](https://docs.llm.ai/docs/pass_through/google_ai_studio)
      sig do
        params(
          endpoint: String,
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def update(endpoint, request_options: {})
      end

      # [Docs](https://docs.llm.ai/docs/pass_through/google_ai_studio)
      sig do
        params(
          endpoint: String,
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def delete(endpoint, request_options: {})
      end

      # [Docs](https://docs.llm.ai/docs/pass_through/google_ai_studio)
      sig do
        params(
          endpoint: String,
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def patch(endpoint, request_options: {})
      end

      sig { params(client: HanzoAI::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
