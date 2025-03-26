# frozen_string_literal: true

module Hanzoai
  module Resources
    class Routes
      # Get a list of available routes in the FastAPI application.
      #
      # @param params [Hanzoai::Models::RouteListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def list(params = {})
        @client.request(
          method: :get,
          path: "routes",
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
