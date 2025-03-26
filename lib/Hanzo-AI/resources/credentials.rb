# frozen_string_literal: true

module HanzoAI
  module Resources
    class Credentials
      # [BETA] endpoint. This might change unexpectedly. Stores credential in DB.
      #   Reloads credentials in memory.
      #
      # @param params [HanzoAI::Models::CredentialCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Object] :credential_info
      #
      #   @option params [String] :credential_name
      #
      #   @option params [Object, nil] :credential_values
      #
      #   @option params [String, nil] :model_id
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create(params)
        parsed, options = HanzoAI::Models::CredentialCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "credentials",
          body: parsed,
          model: HanzoAI::Unknown,
          options: options
        )
      end

      # [BETA] endpoint. This might change unexpectedly.
      #
      # @param params [HanzoAI::Models::CredentialListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def list(params = {})
        @client.request(
          method: :get,
          path: "credentials",
          model: HanzoAI::Unknown,
          options: params[:request_options]
        )
      end

      # [BETA] endpoint. This might change unexpectedly.
      #
      # @param credential_name [String]
      #
      # @param params [HanzoAI::Models::CredentialDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def delete(credential_name, params = {})
        @client.request(
          method: :delete,
          path: ["credentials/%0s", credential_name],
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
