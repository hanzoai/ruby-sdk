# frozen_string_literal: true

module Hanzoai
  module Resources
    class Credentials
      # [BETA] endpoint. This might change unexpectedly. Stores credential in DB.
      #   Reloads credentials in memory.
      #
      # @param params [Hanzoai::Models::CredentialCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Object] :credential_info
      #
      #   @option params [String] :credential_name
      #
      #   @option params [Object, nil] :credential_values
      #
      #   @option params [String, nil] :model_id
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(params)
        parsed, options = Hanzoai::Models::CredentialCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "credentials",
          body: parsed,
          model: Hanzoai::Unknown,
          options: options
        )
      end

      # [BETA] endpoint. This might change unexpectedly.
      #
      # @param params [Hanzoai::Models::CredentialListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def list(params = {})
        @client.request(
          method: :get,
          path: "credentials",
          model: Hanzoai::Unknown,
          options: params[:request_options]
        )
      end

      # [BETA] endpoint. This might change unexpectedly.
      #
      # @param credential_name [String]
      #
      # @param params [Hanzoai::Models::CredentialDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def delete(credential_name, params = {})
        @client.request(
          method: :delete,
          path: ["credentials/%0s", credential_name],
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
