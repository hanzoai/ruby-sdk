# typed: strong

module HanzoAI
  module Models
    module Config
      class PassThroughGenericEndpoint < HanzoAI::BaseModel
        # Key-value pairs of headers to be forwarded with the request. You can set any key
        #   value pair here and it will be forwarded to your target endpoint
        sig { returns(T.anything) }
        attr_accessor :headers

        # The route to be added to the LLM Proxy Server.
        sig { returns(String) }
        attr_accessor :path

        # The URL to which requests for this path should be forwarded.
        sig { returns(String) }
        attr_accessor :target

        sig { params(headers: T.anything, path: String, target: String).returns(T.attached_class) }
        def self.new(headers:, path:, target:)
        end

        sig { override.returns({headers: T.anything, path: String, target: String}) }
        def to_hash
        end
      end
    end
  end
end
