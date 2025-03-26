# frozen_string_literal: true

module Hanzoai
  module Models
    class UtilTransformRequestResponse < Hanzoai::BaseModel
      # @!attribute error
      #
      #   @return [String, nil]
      optional :error, String, nil?: true

      # @!attribute raw_request_api_base
      #
      #   @return [String, nil]
      optional :raw_request_api_base, String, nil?: true

      # @!attribute raw_request_body
      #
      #   @return [Object, nil]
      optional :raw_request_body, Hanzoai::Unknown, nil?: true

      # @!attribute raw_request_headers
      #
      #   @return [Object, nil]
      optional :raw_request_headers, Hanzoai::Unknown, nil?: true

      # @!parse
      #   # @param error [String, nil]
      #   # @param raw_request_api_base [String, nil]
      #   # @param raw_request_body [Object, nil]
      #   # @param raw_request_headers [Object, nil]
      #   #
      #   def initialize(error: nil, raw_request_api_base: nil, raw_request_body: nil, raw_request_headers: nil, **) = super

      # def initialize: (Hash | Hanzoai::BaseModel) -> void
    end
  end
end
