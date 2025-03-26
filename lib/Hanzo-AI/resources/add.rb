# frozen_string_literal: true

module HanzoAI
  module Resources
    class Add
      # Add Allowed Ip
      #
      # @param params [HanzoAI::Models::AddAddAllowedIPParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :ip
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def add_allowed_ip(params)
        parsed, options = HanzoAI::Models::AddAddAllowedIPParams.dump_request(params)
        @client.request(
          method: :post,
          path: "add/allowed_ip",
          body: parsed,
          model: HanzoAI::Unknown,
          options: options
        )
      end

      # @param client [HanzoAI::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
