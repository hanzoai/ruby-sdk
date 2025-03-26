# frozen_string_literal: true

module HanzoAI
  module Resources
    class Responses
      # @return [HanzoAI::Resources::Responses::InputItems]
      attr_reader :input_items

      # Follows the OpenAI Responses API spec:
      #   https://platform.openai.com/docs/api-reference/responses
      #
      #   ```bash
      #   curl -X POST http://localhost:4000/v1/responses     -H "Content-Type: application/json"     -H "Authorization: Bearer sk-1234"     -d '{
      #       "model": "gpt-4o",
      #       "input": "Tell me about AI"
      #   }'
      #   ```
      #
      # @param params [HanzoAI::Models::ResponseCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(params = {})
        @client.request(
          method: :post,
          path: "v1/responses",
          model: HanzoAI::Unknown,
          options: params[:request_options]
        )
      end

      # Get a response by ID.
      #
      #   Follows the OpenAI Responses API spec:
      #   https://platform.openai.com/docs/api-reference/responses/get
      #
      #   ```bash
      #   curl -X GET http://localhost:4000/v1/responses/resp_abc123     -H "Authorization: Bearer sk-1234"
      #   ```
      #
      # @param response_id [String]
      #
      # @param params [HanzoAI::Models::ResponseRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def retrieve(response_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/responses/%0s", response_id],
          model: HanzoAI::Unknown,
          options: params[:request_options]
        )
      end

      # Delete a response by ID.
      #
      #   Follows the OpenAI Responses API spec:
      #   https://platform.openai.com/docs/api-reference/responses/delete
      #
      #   ```bash
      #   curl -X DELETE http://localhost:4000/v1/responses/resp_abc123     -H "Authorization: Bearer sk-1234"
      #   ```
      #
      # @param response_id [String]
      #
      # @param params [HanzoAI::Models::ResponseDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def delete(response_id, params = {})
        @client.request(
          method: :delete,
          path: ["v1/responses/%0s", response_id],
          model: HanzoAI::Unknown,
          options: params[:request_options]
        )
      end

      # @param client [HanzoAI::Client]
      def initialize(client:)
        @client = client
        @input_items = HanzoAI::Resources::Responses::InputItems.new(client: client)
      end
    end
  end
end
