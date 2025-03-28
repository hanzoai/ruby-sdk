# frozen_string_literal: true

module Hanzoai
  module Resources
    class Config
      class PassThroughEndpoint
        # Create new pass-through endpoint
        #
        # @param params [Hanzoai::Models::Config::PassThroughEndpointCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Object] :headers Key-value pairs of headers to be forwarded with the request. You can set any key
        #     value pair here and it will be forwarded to your target endpoint
        #
        #   @option params [String] :path The route to be added to the LLM Proxy Server.
        #
        #   @option params [String] :target The URL to which requests for this path should be forwarded.
        #
        #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def create(params)
          parsed, options = Hanzoai::Models::Config::PassThroughEndpointCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "config/pass_through_endpoint",
            body: parsed,
            model: Hanzoai::Unknown,
            options: options
          )
        end

        # Update a pass-through endpoint
        #
        # @param endpoint_id [String]
        #
        # @param params [Hanzoai::Models::Config::PassThroughEndpointUpdateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def update(endpoint_id, params = {})
          @client.request(
            method: :post,
            path: ["config/pass_through_endpoint/%0s", endpoint_id],
            model: Hanzoai::Unknown,
            options: params[:request_options]
          )
        end

        # GET configured pass through endpoint.
        #
        #   If no endpoint_id given, return all configured endpoints.
        #
        # @param params [Hanzoai::Models::Config::PassThroughEndpointListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String, nil] :endpoint_id
        #
        #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Hanzoai::Models::Config::PassThroughEndpointResponse]
        def list(params = {})
          parsed, options = Hanzoai::Models::Config::PassThroughEndpointListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "config/pass_through_endpoint",
            query: parsed,
            model: Hanzoai::Models::Config::PassThroughEndpointResponse,
            options: options
          )
        end

        # Delete a pass-through endpoint
        #
        #   Returns - the deleted endpoint
        #
        # @param params [Hanzoai::Models::Config::PassThroughEndpointDeleteParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :endpoint_id
        #
        #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Hanzoai::Models::Config::PassThroughEndpointResponse]
        def delete(params)
          parsed, options = Hanzoai::Models::Config::PassThroughEndpointDeleteParams.dump_request(params)
          @client.request(
            method: :delete,
            path: "config/pass_through_endpoint",
            query: parsed,
            model: Hanzoai::Models::Config::PassThroughEndpointResponse,
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
