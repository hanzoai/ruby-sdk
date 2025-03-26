# typed: strong

module Hanzoai
  module Resources
    class Cache
      sig { returns(Hanzoai::Resources::Cache::Redis) }
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
      sig do
        params(request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)))
          .returns(T.anything)
      end
      def delete(request_options: {})
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
      sig do
        params(request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)))
          .returns(T.anything)
      end
      def flush_all(request_options: {})
      end

      # Endpoint for checking if cache can be pinged
      sig do
        params(request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash)))
          .returns(Hanzoai::Models::CachePingResponse)
      end
      def ping(request_options: {})
      end

      sig { params(client: Hanzoai::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
