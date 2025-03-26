# frozen_string_literal: true

module Hanzoai
  module Resources
    class Cache
      class Redis
        # Endpoint for getting /redis/info
        #
        # @param params [Hanzoai::Models::Cache::RediRetrieveInfoParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Hanzoai::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def retrieve_info(params = {})
          @client.request(
            method: :get,
            path: "cache/redis/info",
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
end
