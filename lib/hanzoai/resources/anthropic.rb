# frozen_string_literal: true

module Hanzoai
  module Resources
    class Anthropic
      # [Docs](https://docs.hanzo.ai/docs/anthropic_completion)
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::AnthropicCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(endpoint, params = {})
        @client.request(
          method: :post,
          path: ["anthropic/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # [Docs](https://docs.hanzo.ai/docs/anthropic_completion)
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::AnthropicRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def retrieve(endpoint, params = {})
        @client.request(
          method: :get,
          path: ["anthropic/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # [Docs](https://docs.hanzo.ai/docs/anthropic_completion)
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::AnthropicUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def update(endpoint, params = {})
        @client.request(
          method: :put,
          path: ["anthropic/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # [Docs](https://docs.hanzo.ai/docs/anthropic_completion)
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::AnthropicDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def delete(endpoint, params = {})
        @client.request(
          method: :delete,
          path: ["anthropic/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # [Docs](https://docs.hanzo.ai/docs/anthropic_completion)
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::AnthropicModifyParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def modify(endpoint, params = {})
        @client.request(
          method: :patch,
          path: ["anthropic/%0s", endpoint],
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
