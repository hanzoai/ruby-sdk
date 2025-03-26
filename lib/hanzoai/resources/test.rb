# frozen_string_literal: true

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
      #
      # @param params [Hanzoai::Models::TestPingParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def ping(params = {})
        @client.request(
          method: :get,
          path: "test",
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # @param client [Hanzoai::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
