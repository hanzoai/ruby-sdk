# typed: strong

module Hanzoai
  module Resources
    class Config
      class PassThroughEndpoint
        # Create new pass-through endpoint
        sig do
          params(
            headers: T.anything,
            path: String,
            target: String,
            request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
          )
            .returns(T.anything)
        end
        def create(
          # Key-value pairs of headers to be forwarded with the request. You can set any key
          #   value pair here and it will be forwarded to your target endpoint
          headers:,
          # The route to be added to the LLM Proxy Server.
          path:,
          # The URL to which requests for this path should be forwarded.
          target:,
          request_options: {}
        )
        end

        # Update a pass-through endpoint
        sig do
          params(
            endpoint_id: String,
            request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
          )
            .returns(T.anything)
        end
        def update(endpoint_id, request_options: {})
        end

        # GET configured pass through endpoint.
        #
        #   If no endpoint_id given, return all configured endpoints.
        sig do
          params(
            endpoint_id: T.nilable(String),
            request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
          )
            .returns(Hanzoai::Models::Config::PassThroughEndpointResponse)
        end
        def list(endpoint_id: nil, request_options: {})
        end

        # Delete a pass-through endpoint
        #
        #   Returns - the deleted endpoint
        sig do
          params(
            endpoint_id: String,
            request_options: T.nilable(T.any(Hanzoai::RequestOptions, Hanzoai::Util::AnyHash))
          )
            .returns(Hanzoai::Models::Config::PassThroughEndpointResponse)
        end
        def delete(endpoint_id:, request_options: {})
        end

        sig { params(client: Hanzoai::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
