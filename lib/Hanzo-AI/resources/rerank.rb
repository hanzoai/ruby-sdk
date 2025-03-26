# frozen_string_literal: true

module HanzoAI
  module Resources
    class Rerank
      # Rerank
      #
      # @param params [HanzoAI::Models::RerankCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(params = {})
        @client.request(
          method: :post,
          path: "rerank",
          model: HanzoAI::Unknown,
          options: params[:request_options]
        )
      end

      # Rerank
      #
      # @param params [HanzoAI::Models::RerankCreateV1Params, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create_v1(params = {})
        @client.request(
          method: :post,
          path: "v1/rerank",
          model: HanzoAI::Unknown,
          options: params[:request_options]
        )
      end

      # Rerank
      #
      # @param params [HanzoAI::Models::RerankCreateV2Params, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create_v2(params = {})
        @client.request(
          method: :post,
          path: "v2/rerank",
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
