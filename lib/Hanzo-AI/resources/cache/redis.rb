# frozen_string_literal: true

module HanzoAI
  module Resources
    class Cache
      class Redis
        # Endpoint for getting /redis/info
        #
        # @param params [HanzoAI::Models::Cache::RediRetrieveInfoParams, Hash{Symbol=>Object}] .
        #
        #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Object]
        def retrieve_info(params = {})
          @client.request(
            method: :get,
            path: "cache/redis/info",
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
end
