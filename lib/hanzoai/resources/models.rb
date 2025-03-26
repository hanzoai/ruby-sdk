# frozen_string_literal: true

module Hanzoai
  module Resources
    class Models
      # Use `/model/info` - to get detailed model information, example - pricing, mode,
      #   etc.
      #
      #   This is just for compatibility with openai projects like aider.
      #
      # @param params [Hanzoai::Models::ModelListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Boolean, nil] :return_wildcard_routes
      #
      #   @option params [String, nil] :team_id
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def list(params = {})
        parsed, options = Hanzoai::Models::ModelListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/models",
          query: parsed,
          model: Hanzoai::Unknown,
          options: options
        )
      end

      # @param client [Hanzoai::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
