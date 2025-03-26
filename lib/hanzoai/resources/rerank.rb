# frozen_string_literal: true

module Hanzoai
  module Resources
    class Rerank
      # Rerank
      #
      # @param params [Hanzoai::Models::RerankCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(params = {})
        @client.request(
          method: :post,
          path: "rerank",
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Rerank
      #
      # @param params [Hanzoai::Models::RerankCreateV1Params, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create_v1(params = {})
        @client.request(
          method: :post,
          path: "v1/rerank",
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Rerank
      #
      # @param params [Hanzoai::Models::RerankCreateV2Params, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create_v2(params = {})
        @client.request(
          method: :post,
          path: "v2/rerank",
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
