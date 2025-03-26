# frozen_string_literal: true

module HanzoAI
  module Resources
    class Assistants
      # Create assistant
      #
      #   API Reference docs -
      #   https://platform.openai.com/docs/api-reference/assistants/createAssistant
      #
      # @param params [HanzoAI::Models::AssistantCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(params = {})
        @client.request(
          method: :post,
          path: "v1/assistants",
          model: HanzoAI::Unknown,
          options: params[:request_options]
        )
      end

      # Returns a list of assistants.
      #
      #   API Reference docs -
      #   https://platform.openai.com/docs/api-reference/assistants/listAssistants
      #
      # @param params [HanzoAI::Models::AssistantListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def list(params = {})
        @client.request(
          method: :get,
          path: "v1/assistants",
          model: HanzoAI::Unknown,
          options: params[:request_options]
        )
      end

      # Delete assistant
      #
      #   API Reference docs -
      #   https://platform.openai.com/docs/api-reference/assistants/createAssistant
      #
      # @param assistant_id [String]
      #
      # @param params [HanzoAI::Models::AssistantDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def delete(assistant_id, params = {})
        @client.request(
          method: :delete,
          path: ["v1/assistants/%0s", assistant_id],
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
