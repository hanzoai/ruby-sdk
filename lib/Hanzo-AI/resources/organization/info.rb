# frozen_string_literal: true

module HanzoAI
  module Resources
    class Organization
      class Info
        # Get the org specific information
        #
        # @param params [HanzoAI::Models::Organization::InfoRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :organization_id
        #
        #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [HanzoAI::Models::Organization::InfoRetrieveResponse]
        def retrieve(params)
          parsed, options = HanzoAI::Models::Organization::InfoRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: "organization/info",
            query: parsed,
            model: HanzoAI::Models::Organization::InfoRetrieveResponse,
            options: options
          )
        end

        # DEPRECATED: Use GET /organization/info instead
        #
        # @param params [HanzoAI::Models::Organization::InfoDeprecatedParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :organizations
        #
        #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def deprecated(params)
          parsed, options = HanzoAI::Models::Organization::InfoDeprecatedParams.dump_request(params)
          @client.request(
            method: :post,
            path: "organization/info",
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
end
