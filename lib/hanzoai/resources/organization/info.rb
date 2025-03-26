# frozen_string_literal: true

module Hanzoai
  module Resources
    class Organization
      class Info
        # Get the org specific information
        #
        # @param params [Hanzoai::Models::Organization::InfoRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :organization_id
        #
        #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Hanzoai::Models::Organization::InfoRetrieveResponse]
        def retrieve(params)
          parsed, options = Hanzoai::Models::Organization::InfoRetrieveParams.dump_request(params)
          @client.request(
            method: :get,
            path: "organization/info",
            query: parsed,
            model: Hanzoai::Models::Organization::InfoRetrieveResponse,
            options: options
          )
        end

        # DEPRECATED: Use GET /organization/info instead
        #
        # @param params [Hanzoai::Models::Organization::InfoDeprecatedParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Array<String>] :organizations
        #
        #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def deprecated(params)
          parsed, options = Hanzoai::Models::Organization::InfoDeprecatedParams.dump_request(params)
          @client.request(
            method: :post,
            path: "organization/info",
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
end
