# frozen_string_literal: true

module Hanzoai
  module Resources
    class Azure
      # Call any azure endpoint using the proxy.
      #
      #   Just use `{PROXY_BASE_URL}/azure/{endpoint:path}`
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::AzureCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(endpoint, params = {})
        @client.request(
          method: :post,
          path: ["azure/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Call any azure endpoint using the proxy.
      #
      #   Just use `{PROXY_BASE_URL}/azure/{endpoint:path}`
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::AzureUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def update(endpoint, params = {})
        @client.request(
          method: :put,
          path: ["azure/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Call any azure endpoint using the proxy.
      #
      #   Just use `{PROXY_BASE_URL}/azure/{endpoint:path}`
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::AzureDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def delete(endpoint, params = {})
        @client.request(
          method: :delete,
          path: ["azure/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Call any azure endpoint using the proxy.
      #
      #   Just use `{PROXY_BASE_URL}/azure/{endpoint:path}`
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::AzureCallParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def call(endpoint, params = {})
        @client.request(
          method: :get,
          path: ["azure/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Call any azure endpoint using the proxy.
      #
      #   Just use `{PROXY_BASE_URL}/azure/{endpoint:path}`
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::AzurePatchParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def patch(endpoint, params = {})
        @client.request(
          method: :patch,
          path: ["azure/%0s", endpoint],
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
