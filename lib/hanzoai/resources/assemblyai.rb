# frozen_string_literal: true

module Hanzoai
  module Resources
    class Assemblyai
      # Assemblyai Proxy Route
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::AssemblyaiCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(endpoint, params = {})
        @client.request(
          method: :post,
          path: ["assemblyai/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Assemblyai Proxy Route
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::AssemblyaiRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def retrieve(endpoint, params = {})
        @client.request(
          method: :get,
          path: ["assemblyai/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Assemblyai Proxy Route
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::AssemblyaiUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def update(endpoint, params = {})
        @client.request(
          method: :put,
          path: ["assemblyai/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Assemblyai Proxy Route
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::AssemblyaiDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def delete(endpoint, params = {})
        @client.request(
          method: :delete,
          path: ["assemblyai/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Assemblyai Proxy Route
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::AssemblyaiPatchParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def patch(endpoint, params = {})
        @client.request(
          method: :patch,
          path: ["assemblyai/%0s", endpoint],
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
