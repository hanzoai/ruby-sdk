# frozen_string_literal: true

module Hanzoai
  module Resources
    class OpenAI
      # @return [Hanzoai::Resources::OpenAI::Deployments]
      attr_reader :deployments

      # Simple pass-through for OpenAI. Use this if you want to directly send a request
      #   to OpenAI.
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::OpenAICreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(endpoint, params = {})
        @client.request(
          method: :post,
          path: ["openai/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Simple pass-through for OpenAI. Use this if you want to directly send a request
      #   to OpenAI.
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::OpenAIRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def retrieve(endpoint, params = {})
        @client.request(
          method: :get,
          path: ["openai/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Simple pass-through for OpenAI. Use this if you want to directly send a request
      #   to OpenAI.
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::OpenAIUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def update(endpoint, params = {})
        @client.request(
          method: :put,
          path: ["openai/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Simple pass-through for OpenAI. Use this if you want to directly send a request
      #   to OpenAI.
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::OpenAIDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def delete(endpoint, params = {})
        @client.request(
          method: :delete,
          path: ["openai/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # Simple pass-through for OpenAI. Use this if you want to directly send a request
      #   to OpenAI.
      #
      # @param endpoint [String]
      #
      # @param params [Hanzoai::Models::OpenAIPatchParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def patch(endpoint, params = {})
        @client.request(
          method: :patch,
          path: ["openai/%0s", endpoint],
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # @param client [Hanzoai::Client]
      def initialize(client:)
        @client = client
        @deployments = Hanzoai::Resources::OpenAI::Deployments.new(client: client)
      end
    end
  end
end
