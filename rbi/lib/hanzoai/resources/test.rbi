# typed: strong

module Hanzoai
  module Resources
    class Test
      # [DEPRECATED] use `/health/liveliness` instead.
      #
      #   A test endpoint that pings the proxy server to check if it's healthy.
      #
      #   Parameters: request (Request): The incoming request.
      #
      #   Returns: dict: A dictionary containing the route of the request URL.
      sig do
        params(request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)))
          .returns(T.anything)
      end
      def ping(request_options: {})
      end

      sig { params(client: Hanzoai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
