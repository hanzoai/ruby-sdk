# frozen_string_literal: true

module HanzoAI
  module Resources
    class Moderations
      # The moderations endpoint is a tool you can use to check whether content complies
      #   with an LLM Providers policies.
      #
      #   Quick Start
      #
      #   ```
      #   curl --location 'http://0.0.0.0:4000/moderations'     --header 'Content-Type: application/json'     --header 'Authorization: Bearer sk-1234'     --data '{"input": "Sample text goes here", "model": "text-moderation-stable"}'
      #   ```
      #
      # @param params [HanzoAI::Models::ModerationCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(params = {})
        @client.request(
          method: :post,
          path: "v1/moderations",
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
