# typed: strong

module Hanzoai
  module Resources
    class Azure
      # Call any azure endpoint using the proxy.
      #
      #   Just use `{PROXY_BASE_URL}/azure/{endpoint:path}`
      sig do
        params(
          endpoint: String,
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def create(endpoint, request_options: {})
      end

      # Call any azure endpoint using the proxy.
      #
      #   Just use `{PROXY_BASE_URL}/azure/{endpoint:path}`
      sig do
        params(
          endpoint: String,
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def update(endpoint, request_options: {})
      end

      # Call any azure endpoint using the proxy.
      #
      #   Just use `{PROXY_BASE_URL}/azure/{endpoint:path}`
      sig do
        params(
          endpoint: String,
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def delete(endpoint, request_options: {})
      end

      # Call any azure endpoint using the proxy.
      #
      #   Just use `{PROXY_BASE_URL}/azure/{endpoint:path}`
      sig do
        params(
          endpoint: String,
          request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
        )
          .returns(T.anything)
      end
      def call(endpoint, request_options: {})
      end

      # Call any azure endpoint using the proxy.
      #
      #   Just use `{PROXY_BASE_URL}/azure/{endpoint:path}`
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
