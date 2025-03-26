# frozen_string_literal: true

module HanzoAI
  module Resources
    class Models
      # Use `/model/info` - to get detailed model information, example - pricing, mode,
      #   etc.
      #
      #   This is just for compatibility with openai projects like aider.
      #
      # @param params [HanzoAI::Models::ModelListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Boolean, nil] :return_wildcard_routes
      #
      #   @option params [String, nil] :team_id
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def list(params = {})
        parsed, options = HanzoAI::Models::ModelListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v1/models",
          query: parsed,
          model: HanzoAI::Unknown,
          options: options
        )
      end

      # @param client [HanzoAI::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
