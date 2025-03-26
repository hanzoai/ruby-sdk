# frozen_string_literal: true

module HanzoAI
  module Resources
    class Routes
      # Get a list of available routes in the FastAPI application.
      #
      # @param params [HanzoAI::Models::RouteListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def list(params = {})
        @client.request(
          method: :get,
          path: "routes",
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
