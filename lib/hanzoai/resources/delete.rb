# frozen_string_literal: true

module Hanzoai
  module Resources
    class Delete
      # Delete Allowed Ip
      #
      # @param params [Hanzoai::Models::DeleteCreateAllowedIPParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :ip
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def create_allowed_ip(params)
        parsed, options = Hanzoai::Models::DeleteCreateAllowedIPParams.dump_request(params)
        @client.request(
          method: :post,
          path: "delete/allowed_ip",
          body: parsed,
          model: Hanzoai::Unknown,
          options: options
        )
      end

      # @param client [Hanzoai::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
