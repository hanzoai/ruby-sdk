# frozen_string_literal: true

module HanzoAI
  module Resources
    class Bedrock
      # [Docs](https://docs.llm.ai/docs/pass_through/bedrock)
      #
      # @param endpoint [String]
      #
      # @param params [HanzoAI::Models::BedrockCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(endpoint, params = {})
        @client.request(
          method: :post,
          path: ["bedrock/%0s", endpoint],
          model: HanzoAI::Unknown,
          options: params[:request_options]
        )
      end

      # [Docs](https://docs.llm.ai/docs/pass_through/bedrock)
      #
      # @param endpoint [String]
      #
      # @param params [HanzoAI::Models::BedrockRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def retrieve(endpoint, params = {})
        @client.request(
          method: :get,
          path: ["bedrock/%0s", endpoint],
          model: HanzoAI::Unknown,
          options: params[:request_options]
        )
      end

      # [Docs](https://docs.llm.ai/docs/pass_through/bedrock)
      #
      # @param endpoint [String]
      #
      # @param params [HanzoAI::Models::BedrockUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def update(endpoint, params = {})
        @client.request(
          method: :put,
          path: ["bedrock/%0s", endpoint],
          model: HanzoAI::Unknown,
          options: params[:request_options]
        )
      end

      # [Docs](https://docs.llm.ai/docs/pass_through/bedrock)
      #
      # @param endpoint [String]
      #
      # @param params [HanzoAI::Models::BedrockDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def delete(endpoint, params = {})
        @client.request(
          method: :delete,
          path: ["bedrock/%0s", endpoint],
          model: HanzoAI::Unknown,
          options: params[:request_options]
        )
      end

      # [Docs](https://docs.llm.ai/docs/pass_through/bedrock)
      #
      # @param endpoint [String]
      #
      # @param params [HanzoAI::Models::BedrockPatchParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def patch(endpoint, params = {})
        @client.request(
          method: :patch,
          path: ["bedrock/%0s", endpoint],
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
