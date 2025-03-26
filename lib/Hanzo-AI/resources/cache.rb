# frozen_string_literal: true

module HanzoAI
  module Resources
    class Cache
      # @return [HanzoAI::Resources::Cache::Redis]
      attr_reader :redis

      # Endpoint for deleting a key from the cache. All responses from llm proxy have
      #   `x-llm-cache-key` in the headers
      #
      #   Parameters:
      #
      #   - **keys**: _Optional[List[str]]_ - A list of keys to delete from the cache.
      #     Example {"keys": ["key1", "key2"]}
      #
      #   ```shell
      #   curl -X POST "http://0.0.0.0:4000/cache/delete"     -H "Authorization: Bearer sk-1234"     -d '{"keys": ["key1", "key2"]}'
      #   ```
      #
      # @param params [HanzoAI::Models::CacheDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def delete(params = {})
        @client.request(
          method: :post,
          path: "cache/delete",
          model: HanzoAI::Unknown,
          options: params[:request_options]
        )
      end

      # A function to flush all items from the cache. (All items will be deleted from
      #   the cache with this) Raises HTTPException if the cache is not initialized or if
      #   the cache type does not support flushing. Returns a dictionary with the status
      #   of the operation.
      #
      #   Usage:
      #
      #   ```
      #   curl -X POST http://0.0.0.0:4000/cache/flushall -H "Authorization: Bearer sk-1234"
      #   ```
      #
      # @param params [HanzoAI::Models::CacheFlushAllParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Object]
      def flush_all(params = {})
        @client.request(
          method: :post,
          path: "cache/flushall",
          model: HanzoAI::Unknown,
          options: params[:request_options]
        )
      end

      # Endpoint for checking if cache can be pinged
      #
      # @param params [HanzoAI::Models::CachePingParams, Hash{Symbol=>Object}] .
      #
      #   @option params [HanzoAI::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [HanzoAI::Models::CachePingResponse]
      def ping(params = {})
        @client.request(
          method: :get,
          path: "cache/ping",
          model: HanzoAI::Models::CachePingResponse,
          options: params[:request_options]
        )
      end

      # @param client [HanzoAI::Client]
      def initialize(client:)
        @client = client
        @redis = HanzoAI::Resources::Cache::Redis.new(client: client)
      end
    end
  end
end
