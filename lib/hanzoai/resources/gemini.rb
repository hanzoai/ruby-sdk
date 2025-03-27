# frozen_string_literal: true

module Hanzoai
  module Resources
    class Gemini
      # [Docs](https://docs.hanzo.ai/docs/pass_through/google_ai_studio)
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::GeminiCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(endpoint, params = {})
        @client.request(
          method: :post,
          path: ["gemini/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # [Docs](https://docs.hanzo.ai/docs/pass_through/google_ai_studio)
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::GeminiRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def retrieve(endpoint, params = {})
        @client.request(
          method: :get,
          path: ["gemini/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # [Docs](https://docs.hanzo.ai/docs/pass_through/google_ai_studio)
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::GeminiUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def update(endpoint, params = {})
        @client.request(
          method: :put,
          path: ["gemini/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # [Docs](https://docs.hanzo.ai/docs/pass_through/google_ai_studio)
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::GeminiDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def delete(endpoint, params = {})
        @client.request(
          method: :delete,
          path: ["gemini/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # [Docs](https://docs.hanzo.ai/docs/pass_through/google_ai_studio)
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::GeminiPatchParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def patch(endpoint, params = {})
        @client.request(
          method: :patch,
          path: ["gemini/%0s", endpoint],
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
