# frozen_string_literal: true

module HanzoAI
  module Resources
    class EuAssemblyai
      # Assemblyai Proxy Route
      #
      # @param endpoint [String]
      #
      # @param params [HanzoAI::Models::EuAssemblyaiCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(endpoint, params = {})
        @client.request(
          method: :post,
          path: ["eu.assemblyai/%0s", endpoint],
          model: HanzoAI::Unknown,
          options: params[:request_options]
        )
      end

      # Assemblyai Proxy Route
      #
      # @param endpoint [String]
      #
      # @param params [HanzoAI::Models::EuAssemblyaiRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def retrieve(endpoint, params = {})
        @client.request(
          method: :get,
          path: ["eu.assemblyai/%0s", endpoint],
          model: HanzoAI::Unknown,
          options: params[:request_options]
        )
      end

      # Assemblyai Proxy Route
      #
      # @param endpoint [String]
      #
      # @param params [HanzoAI::Models::EuAssemblyaiUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def update(endpoint, params = {})
        @client.request(
          method: :put,
          path: ["eu.assemblyai/%0s", endpoint],
          model: HanzoAI::Unknown,
          options: params[:request_options]
        )
      end

      # Assemblyai Proxy Route
      #
      # @param endpoint [String]
      #
      # @param params [HanzoAI::Models::EuAssemblyaiDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def delete(endpoint, params = {})
        @client.request(
          method: :delete,
          path: ["eu.assemblyai/%0s", endpoint],
          model: HanzoAI::Unknown,
          options: params[:request_options]
        )
      end

      # Assemblyai Proxy Route
      #
      # @param endpoint [String]
      #
      # @param params [HanzoAI::Models::EuAssemblyaiPatchParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def patch(endpoint, params = {})
        @client.request(
          method: :patch,
          path: ["eu.assemblyai/%0s", endpoint],
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
