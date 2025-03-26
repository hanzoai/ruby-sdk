# frozen_string_literal: true

module Hanzoai
  module Resources
    class Add
      # Add Allowed Ip
      #
      # @param params [Hanzoai::Models::AddAddAllowedIPParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :ip
      #
      #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def add_allowed_ip(params)
        parsed, options = Hanzoai::Models::AddAddAllowedIPParams.dump_request(params)
        @client.request(
          method: :post,
          path: "add/allowed_ip",
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
