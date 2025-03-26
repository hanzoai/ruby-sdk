# frozen_string_literal: true

module Hanzoai
  module Models
    module Config
      class PassThroughGenericEndpoint < Hanzoai::BaseModel
        # @!attribute headers
        #   Key-value pairs of headers to be forwarded with the request. You can set any key
        #     value pair here and it will be forwarded to your target endpoint
        #
        #   @return [Object]
        required :headers, Hanzoai::Unknown

        # @!attribute path
        #   The route to be added to the LLM Proxy Server.
        #
        #   @return [String]
        required :path, String

        # @!attribute target
        #   The URL to which requests for this path should be forwarded.
        #
        #   @return [String]
        required :target, String

        # @!parse
        #   # @param headers [Object]
        #   # @param path [String]
        #   # @param target [String]
        #   #
        #   def initialize(headers:, path:, target:, **) = super

        # def initialize: (Hash | Hanzoai::BaseModel) -> void
      end
    end
  end
end
