# frozen_string_literal: true

module Hanzoai
  module Resources
    class Langfuse
      # Call Langfuse via LLM proxy. Works with Langfuse SDK.
      #
      #   [Docs](https://docs.llm.ai/docs/pass_through/langfuse)
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::LangfuseCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(endpoint, params = {})
        @client.request(
          method: :post,
          path: ["langfuse/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Call Langfuse via LLM proxy. Works with Langfuse SDK.
      #
      #   [Docs](https://docs.llm.ai/docs/pass_through/langfuse)
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::LangfuseRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def retrieve(endpoint, params = {})
        @client.request(
          method: :get,
          path: ["langfuse/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Call Langfuse via LLM proxy. Works with Langfuse SDK.
      #
      #   [Docs](https://docs.llm.ai/docs/pass_through/langfuse)
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::LangfuseUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def update(endpoint, params = {})
        @client.request(
          method: :put,
          path: ["langfuse/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Call Langfuse via LLM proxy. Works with Langfuse SDK.
      #
      #   [Docs](https://docs.llm.ai/docs/pass_through/langfuse)
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::LangfuseDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def delete(endpoint, params = {})
        @client.request(
          method: :delete,
          path: ["langfuse/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Call Langfuse via LLM proxy. Works with Langfuse SDK.
      #
      #   [Docs](https://docs.llm.ai/docs/pass_through/langfuse)
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::LangfusePatchParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def patch(endpoint, params = {})
        @client.request(
          method: :patch,
          path: ["langfuse/%0s", endpoint],
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
