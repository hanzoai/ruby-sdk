# frozen_string_literal: true

module Hanzoai
  module Resources
    class VertexAI
      # Call LLM proxy via Vertex AI SDK.
      #
      #   [Docs](https://docs.llm.ai/docs/pass_through/vertex_ai)
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::VertexAICreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(endpoint, params = {})
        @client.request(
          method: :post,
          path: ["vertex_ai/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Call LLM proxy via Vertex AI SDK.
      #
      #   [Docs](https://docs.llm.ai/docs/pass_through/vertex_ai)
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::VertexAIRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def retrieve(endpoint, params = {})
        @client.request(
          method: :get,
          path: ["vertex_ai/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Call LLM proxy via Vertex AI SDK.
      #
      #   [Docs](https://docs.llm.ai/docs/pass_through/vertex_ai)
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::VertexAIUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def update(endpoint, params = {})
        @client.request(
          method: :put,
          path: ["vertex_ai/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Call LLM proxy via Vertex AI SDK.
      #
      #   [Docs](https://docs.llm.ai/docs/pass_through/vertex_ai)
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::VertexAIDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def delete(endpoint, params = {})
        @client.request(
          method: :delete,
          path: ["vertex_ai/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Call LLM proxy via Vertex AI SDK.
      #
      #   [Docs](https://docs.llm.ai/docs/pass_through/vertex_ai)
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::VertexAIPatchParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def patch(endpoint, params = {})
        @client.request(
          method: :patch,
          path: ["vertex_ai/%0s", endpoint],
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
