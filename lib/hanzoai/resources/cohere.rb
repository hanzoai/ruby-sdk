# frozen_string_literal: true

module Hanzoai
  module Resources
    class Cohere
      # [Docs](https://docs.llm.ai/docs/pass_through/cohere)
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::CohereCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(endpoint, params = {})
        @client.request(
          method: :post,
          path: ["cohere/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # [Docs](https://docs.llm.ai/docs/pass_through/cohere)
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::CohereRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def retrieve(endpoint, params = {})
        @client.request(
          method: :get,
          path: ["cohere/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # [Docs](https://docs.llm.ai/docs/pass_through/cohere)
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::CohereUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def update(endpoint, params = {})
        @client.request(
          method: :put,
          path: ["cohere/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # [Docs](https://docs.llm.ai/docs/pass_through/cohere)
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::CohereDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def delete(endpoint, params = {})
        @client.request(
          method: :delete,
          path: ["cohere/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # [Docs](https://docs.llm.ai/docs/pass_through/cohere)
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::CohereModifyParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def modify(endpoint, params = {})
        @client.request(
          method: :patch,
          path: ["cohere/%0s", endpoint],
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
