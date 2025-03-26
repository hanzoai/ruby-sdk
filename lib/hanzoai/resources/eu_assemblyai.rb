# frozen_string_literal: true

module Hanzoai
  module Resources
    class EuAssemblyai
      # Assemblyai Proxy Route
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::EuAssemblyaiCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(endpoint, params = {})
        @client.request(
          method: :post,
          path: ["eu.assemblyai/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Assemblyai Proxy Route
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::EuAssemblyaiRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def retrieve(endpoint, params = {})
        @client.request(
          method: :get,
          path: ["eu.assemblyai/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Assemblyai Proxy Route
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::EuAssemblyaiUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def update(endpoint, params = {})
        @client.request(
          method: :put,
          path: ["eu.assemblyai/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Assemblyai Proxy Route
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::EuAssemblyaiDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def delete(endpoint, params = {})
        @client.request(
          method: :delete,
          path: ["eu.assemblyai/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Assemblyai Proxy Route
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::EuAssemblyaiPatchParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def patch(endpoint, params = {})
        @client.request(
          method: :patch,
          path: ["eu.assemblyai/%0s", endpoint],
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
