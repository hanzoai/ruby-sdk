# typed: strong

module HanzoAI
  module Resources
    class OpenAI
      sig { returns(HanzoAI::Resources::OpenAI::Deployments) }
      attr_reader :deployments

      # Simple pass-through for OpenAI. Use this if you want to directly send a request
      #   to OpenAI.
      sig do
        params(
          endpoint: String,
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def create(endpoint, request_options: {})
      end

      # Simple pass-through for OpenAI. Use this if you want to directly send a request
      #   to OpenAI.
      sig do
        params(
          endpoint: String,
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def retrieve(endpoint, request_options: {})
      end

      # Simple pass-through for OpenAI. Use this if you want to directly send a request
      #   to OpenAI.
      sig do
        params(
          endpoint: String,
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def update(endpoint, request_options: {})
      end

      # Simple pass-through for OpenAI. Use this if you want to directly send a request
      #   to OpenAI.
      sig do
        params(
          endpoint: String,
          request_options: T.nilable(T.any(HanzoAI::RequestOptions, HanzoAI::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def delete(endpoint, request_options: {})
      end

      # Simple pass-through for OpenAI. Use this if you want to directly send a request
      #   to OpenAI.
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
