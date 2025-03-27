# typed: strong

module Hanzoai
  module Resources
    class Bedrock
      # [Docs](https://docs.hanzo.ai/docs/pass_through/bedrock)
      sig do
        params(
          endpoint: String,
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def create(endpoint, request_options: {})
      end

      # [Docs](https://docs.hanzo.ai/docs/pass_through/bedrock)
      sig do
        params(
          endpoint: String,
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def retrieve(endpoint, request_options: {})
      end

      # [Docs](https://docs.hanzo.ai/docs/pass_through/bedrock)
      sig do
        params(
          endpoint: String,
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def update(endpoint, request_options: {})
      end

      # [Docs](https://docs.hanzo.ai/docs/pass_through/bedrock)
      sig do
        params(
          endpoint: String,
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def delete(endpoint, request_options: {})
      end

      # [Docs](https://docs.hanzo.ai/docs/pass_through/bedrock)
      sig do
        params(
          endpoint: String,
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def patch(endpoint, request_options: {})
      end

      sig { params(client: Hanzoai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
